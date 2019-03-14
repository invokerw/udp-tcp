#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>

#include <sys/types.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <sys/time.h>
#include <errno.h>
#include <map>
#include <set>
#include <signal.h>
#include <unistd.h>
#include <netinet/tcp.h> // for TCP_NODELAY

using namespace std;

void SetNonBlock(int fd, bool non_block)
{
	int f = fcntl(fd, F_GETFL);
	if(non_block) 
	{
		// non-block
		if (f & O_NONBLOCK) return;
		else f |= O_NONBLOCK;
	} 
	else 
	{
		// block
		if (f & O_NONBLOCK) f &= ~O_NONBLOCK;
		else return;
	}   
	fcntl(fd, F_SETFL, f);
}

void signal_func(int sig)
{
	fprintf(stderr, "signal_func SIGPIPE sig=%d\n", sig);
}

int main()
{
	signal(SIGPIPE, signal_func);

	unsigned short listen_port = 9231;

	// socket
	int to_cli_fd = socket(AF_INET, SOCK_STREAM, 0); //接收客户端来的数据
	if(to_cli_fd == -1)
	{
		fprintf(stderr, "socket(to_cli_fd) error\n");
		return -1;
	}
	//noblock
	SetNonBlock(to_cli_fd, true);
	
	int val = 1;
	if(setsockopt(to_cli_fd, SOL_SOCKET, SO_REUSEADDR, (void *)&val, sizeof(int)) == -1)
	{
		fprintf(stderr, "setsockopt(to_cli_fd) error\n");
		return -1;
	}
	int flag = 1;
	if(setsockopt(to_cli_fd, IPPROTO_TCP, TCP_NODELAY, (void*)&flag, sizeof(int)) == -1)
	{
		fprintf(stderr, "setsockopt(to_cli_fd) 1 error\n");
		return -1;
	}

	// 服务器的地址信息
	sockaddr_in listen_addr;
	memset(&listen_addr, 0, sizeof(listen_addr));
	listen_addr.sin_family = AF_INET;
	listen_addr.sin_addr.s_addr = inet_addr("0.0.0.0");
	listen_addr.sin_port = htons(listen_port);

	// 捆绑socket描述符sockfd
	if(bind(to_cli_fd, (sockaddr*)&listen_addr, sizeof(listen_addr)) == -1) 
	{
		fprintf(stderr, "bind error.\n"); 
		return -1;    
	}
	
	if(listen(to_cli_fd, SOMAXCONN) == -1)
	{
		fprintf(stderr, "listen(to_cli_fd) error %d\n", errno);
		return -1;
	}

	set<int> fds;

	while(true)
	{
		int max_fd = 0;
		fd_set rset;
		FD_ZERO(&rset);

		for(auto it=fds.begin(); it!=fds.end(); ++it)
		{
			int fd = *it;
			if(fd > max_fd) max_fd = fd;
			FD_SET(fd, &rset);
		}

		if(to_cli_fd>max_fd) max_fd = to_cli_fd; 
		FD_SET(to_cli_fd, &rset);
		
		timeval tv;
		tv.tv_sec = 0;
		tv.tv_usec = 10*1000;
		if(select(max_fd+1, &rset, 0, 0, &tv) == -1)
		{
			if(errno != EINTR)
			{
				fprintf(stderr, "select error\n");
				return -1;
			}
			FD_ZERO(&rset); //do clear
		}
		
		//gettimeofday(&tv, 0);
		//int64_t now_ms = tv.tv_sec*1000+tv.tv_usec/1000;
		
		if(FD_ISSET(to_cli_fd, &rset))
		{
			int fd = to_cli_fd;
			sockaddr_in src_addr;
			socklen_t l = sizeof(src_addr);
        
			int nowfd = accept(fd, (struct sockaddr*)&src_addr, &l);
			//fprintf(stderr, "fd == to_cli_fd accept fd=%d, nowfd=%d\n", fd, nowfd);
			if(nowfd == -1)
			{
				fprintf(stderr, "socket(to_cli_fd) error\n");
				return -1;
			}
			else
			{
				fds.insert(nowfd);
			}
        
		}
		set<int> need_del_fd;
		for(auto it=fds.begin(); it!=fds.end(); ++it)
		{
			int fd = *it;
			if(FD_ISSET(fd, &rset))
			{
				char buf[1024*100];
				//char buf[BUFFER_SIZE];
				ssize_t ret = recv(fd, buf, sizeof(buf), 0);
				//fprintf(stderr, "recv ret=%ld error=%d fd=%d\n", ret, errno, fd);
				if(ret > 0)
				{
					string data(buf, ret);
					fprintf(stderr, "recv ret=%ld buf=%s\n", ret, data.c_str());
					int ret = send(fd, data.c_str(), data.size(), 0);
					if(ret <= 0)
					{
						fprintf(stderr, "send _to_svr_fd=%d, ret=%d\n", fd, ret);
						close(fd);
						need_del_fd.insert(fd);
						continue;
					}
				}
				else
				{
					//fprintf(stderr, "all_srv_fds recv ret=%ld error=%d srv=%d\n", ret, errno, fd);
					close(fd);
					need_del_fd.insert(fd);
					continue;
				}
			}
		}

		for(auto it=need_del_fd.begin(); it!=need_del_fd.end(); ++it)
		{
			fds.erase(*it);
		}

		usleep(1000);
	}

	return 0;
}


















