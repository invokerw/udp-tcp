#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <cerrno>

extern "C" {
#include <unistd.h>
#include <fcntl.h>
#include <poll.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/wait.h>
}

// exceptions
class Error 
{
public:
	~Error() {};
	virtual std::string desc() const = 0;
};

class SysError: public Error 
{
	int e;
public:
	SysError(int eno): e(eno) {};
	virtual std::string desc() const {
		char s[256];
		snprintf(s, sizeof(s), "System error: errno=%d", e);
		return s;
	}
};

class NetError: public Error 
{
	int e;
public:
	NetError(int eno): e(eno) {};
	virtual std::string desc() const {
		char s[256];
		snprintf(s, sizeof(s), "Network error: errno=%d", e);
		return s;
	}
};

class FdKeeper
{
	enum { 
		INVALID_FD = -1,
	};
	// variables
	int fd;
	bool auto_close;
	// private constructors
	FdKeeper(const FdKeeper &rhs);
	FdKeeper& operator= (const FdKeeper &rhs);

public:
	FdKeeper(int n): fd(n), auto_close(true) {};
	~FdKeeper() {
		if (auto_close && fd != INVALID_FD)
			close(fd);
	}
	operator int() const {
		return fd;
	}
	void autoClose(bool b) {
		auto_close = b;
	}
};

int
listenOnPort(int port)
{
	// socket
	// FIXME
	FdKeeper fk(socket(AF_INET, SOCK_STREAM, 0));
	if (fk == -1)
		throw SysError(errno);
	// reuse addr
	int on = 1;
	if (setsockopt(fk, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) == -1)
		throw SysError(errno);
	// bind
	sockaddr_in addr;
	memset(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = inet_addr("0.0.0.0");
	addr.sin_port = htons(port);
	if (bind(fk, (sockaddr *)&addr, sizeof(addr)) == -1)
		throw SysError(errno);
	// listen
	if (listen(fk, 5) == -1)
		throw SysError(errno);
	// return
	fk.autoClose(false);
	return fk;
}

int
acceptNewConn(int lfd)
{
	while (true) {
		int cfd = accept(lfd, 0, 0);
		if (cfd == -1) {
			if (errno == EINTR)
				continue;
			throw SysError(errno);
		}
		return cfd;
	}
}

void
setNonBlock(int fd, bool non_block)
{
	int f = fcntl(fd, F_GETFL);
	if (non_block) {
		// non-block
		if (f & O_NONBLOCK)
			return;
		else
			f |= O_NONBLOCK;
	} else {
		// block
		if (f & O_NONBLOCK)
			f &= ~O_NONBLOCK;
		else
			return;
	}
	if (fcntl(fd, F_SETFL, f) == -1)
		throw SysError(errno);
}

class Worker 
{
	struct Buf {
		char *buf;
		size_t cap;
		size_t len;
		size_t idx;
		// functions
		Buf(size_t c=4096): cap(c), len(0), idx(0) {
			buf = new char[cap];
		}
		~Buf() {
			delete[] buf;
		}
	};
	// variables
	int local_fd;
	sockaddr_in remote_addr;
	int remote_fd;
	// trasnfer
	Buf lbuf;
	Buf rbuf;
	bool local_closed;
	bool remote_closed;
	pollfd pfd[2];
	bool watch_local_read;
	bool watch_local_write;
	bool watch_remote_read;
	bool watch_remote_write;

public:
	Worker(int fd, sockaddr_in &a): local_fd(fd), remote_addr(a) {
		remote_fd = socket(AF_INET, SOCK_STREAM, 0);
		if (remote_fd == -1)
			throw SysError(errno);
		if (connect(remote_fd, (sockaddr *)&remote_addr, sizeof(remote_addr)) == -1) {
			close(remote_fd);
			close(local_fd);
			throw SysError(errno);
		}
		setNonBlock(local_fd, true);
		setNonBlock(remote_fd, true);
		local_closed = false;
		remote_closed = false;
		watch_local_read = true;
		watch_local_write = false;
		watch_remote_read = true;
		watch_remote_write = false;
	}

	~Worker() {
		close(remote_fd);
		close(local_fd);
	}

	void run() {
		while (true) {
			int n = watch();
			if (n == 0)
				break;
			for (int i = 0; i < 2; i++) {
				if (pfd[i].fd == local_fd) {
					// local
					processLocalEvent(pfd[i].revents);
				} else if (pfd[i].fd == remote_fd) {
					// remote
					processRemoteEvent(pfd[i].revents);
				}
			}
//sleep(2);
		}
	}

	int watch() {
		// poll
		while (true) {
			int n = prepareWatch();
			if (n == 0)
				return 0;
			n = poll(pfd, n, 10000000);
			if (n == -1) {
				if (errno == EINTR)
					continue;
				throw SysError(errno);
			}
			return n;
		}
	}

	int prepareWatch() {
		memset(pfd, 0, sizeof(pfd));
		int idx = 0;
		if (watch_local_read || watch_local_write) {
			pfd[idx].fd = local_fd;
			pfd[idx].events = 0;
			if (watch_local_read)
				pfd[idx].events |= POLLIN;
			if (watch_local_write)
				pfd[idx].events |= POLLOUT;
			idx++;
		}
		if (watch_remote_read || watch_remote_write) {
			pfd[idx].fd = remote_fd;
			pfd[idx].events = 0;
			if (watch_remote_read)
				pfd[idx].events |= POLLIN;
			if (watch_remote_write)
				pfd[idx].events |= POLLOUT;
			idx++;
		}
		return idx;
	}

	void processLocalEvent(short revents) {
		if (revents & POLLIN) {
			// can read
			if (readLocal()) {
				watch_local_read = false;
				watch_remote_write = true;
			}
		} 
		if (revents & POLLOUT) {
			// can write
			if (writeLocal()) {
				watch_local_write = false;
				if (!remote_closed)
					watch_remote_read = true;
			}
		}
		if (revents & (POLLERR | POLLHUP | POLLNVAL)) {
			// error
			throw NetError(errno);
		}
	}

	// true: got data
	bool readLocal() {
		lbuf.idx = 0;
		lbuf.len = read(local_fd, lbuf.buf, lbuf.cap);
		if (lbuf.len == (size_t)-1) {
			if (errno == EAGAIN)
				return false;
			throw NetError(errno);
		} else if (lbuf.len == 0) {
			// EOF
			local_closed = true;
		}
		return true;
	}

	// true: sent all
	bool writeLocal() {
		while (rbuf.idx < rbuf.len) {
			int r = write(local_fd, rbuf.buf + rbuf.idx, rbuf.len - rbuf.idx);
			if (r == -1) {
				if (errno == EAGAIN)
					return false;
				throw NetError(errno);
			}
			rbuf.idx += r;
		}
		// send FIN?
		if (remote_closed)
			shutdown(local_fd, SHUT_WR);
		return true;
	}

	void processRemoteEvent(short revents) {
		if (revents & POLLIN) {
			// can read
			if (readRemote()) {
				watch_remote_read = false;
				watch_local_write = true;
			}
		} 
		if (revents & POLLOUT) {
			// can write
			if (writeRemote()) {
				watch_remote_write = false;
				if (!local_closed)
					watch_local_read = true;
			}
		}
		if (revents & (POLLERR | POLLHUP | POLLNVAL)) {
			// error
			throw NetError(errno);
		}
	}

	// true: got data
	bool readRemote() {
		rbuf.idx = 0;
		rbuf.len = read(remote_fd, rbuf.buf, rbuf.cap);
		if (rbuf.len == (size_t)-1) {
			if (errno == EAGAIN)
				return false;
			throw NetError(errno);
		} else if (rbuf.len == 0) {
			// EOF
			remote_closed = true;
		}
		return true;
	}

	// true: sent all
	bool writeRemote() {
		while (lbuf.idx < lbuf.len) {
			int r = write(remote_fd, lbuf.buf + lbuf.idx, lbuf.len - lbuf.idx);
			if (r == -1) {
				if (errno == EAGAIN)
					return false;
				throw NetError(errno);
			}
			lbuf.idx += r;
		}
		// send FIN?
		if (local_closed)
			shutdown(remote_fd, SHUT_WR);
		return true;
	}
};

void SigHandler_CHLD(int sig)
{
	while(true)
	{
		int status;
		if(waitpid(-1, &status, WNOHANG)<=0) break;
	}
}

int
main(int argc, char *argv[])
{
	signal(SIGCHLD, SigHandler_CHLD);

	int listen_fd = listenOnPort(6900); //yijie
	while (true) {
		// accept
		int conn_fd = acceptNewConn(listen_fd);
		// fork
		pid_t pid = fork();
		if (pid == -1) {
			throw SysError(errno);
		} else if (pid == 0) {
			// child
			close(listen_fd);
			// server addr
			sockaddr_in addr;
			memset(&addr, 0, sizeof(addr));
			addr.sin_family = AF_INET;

			//yijie: sync.1sdk.cn
			//addr.sin_addr.s_addr = inet_addr("39.108.76.150");
			//addr.sin_addr.s_addr = inet_addr("59.153.75.243");

			//185: dev.185sy.com
			//addr.sin_addr.s_addr = inet_addr("118.89.153.29");
			//addr.sin_addr.s_addr = inet_addr("122.228.251.113");
			//addr.sin_addr.s_addr = inet_addr("122.246.3.111");
			//addr.sin_addr.s_addr = inet_addr("122.246.3.203");

			//addr.sin_addr.s_addr = inet_addr("47.92.167.117");
			//addr.sin_port = htons(22);
			addr.sin_addr.s_addr = inet_addr("192.168.1.12");
			addr.sin_port = htons(80);
			// transfer
			Worker worker(conn_fd, addr);
			try {
				worker.run();
			} catch (Error &e) {
				fprintf(stderr, "Catch exception: %s.\n", e.desc().c_str());
			}
			// end
			exit(0);
		}
		// parent
		close(conn_fd);
	}
	
	return 0;
}
