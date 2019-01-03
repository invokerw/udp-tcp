#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <sys/time.h>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <signal.h>
#include <unistd.h>

using namespace std;

//only for TCP
class Link
{
	sockaddr_in _cli_addr;
	socklen_t _cli_addr_len;
	int _to_svr_fd;
	int _to_cli_fd;

	multimap<int64_t, string> _to_svr_buffer; //time(ms)=>data
	multimap<int64_t, string> _to_cli_buffer;

	int64_t _last_active_time_ms;

	int _close_period_ms;
	int _Bps;
	int _bits_per_ms;
	int64_t _last_tick_ms;


public:
	Link(int64_t now_ms, const sockaddr_in& cli_addr, int to_svr_fd, int close_period_ms, int to_cli_fd, int Bps)
	    :_to_svr_fd(to_svr_fd), _to_cli_fd(to_cli_fd), _last_active_time_ms(now_ms), _close_period_ms(close_period_ms), _Bps(Bps), _last_tick_ms(0)
	{
		_cli_addr_len = sizeof(_cli_addr);
		memcpy(&_cli_addr, &cli_addr, _cli_addr_len);
		_bits_per_ms = _Bps/1000;
		//fprintf(stderr, "_Bps=%d, _bits_per_ms=%d\n", _Bps, _bits_per_ms);
	}
	~Link()
	{
		close(_to_svr_fd);
		close(_to_cli_fd);
	}

	const sockaddr_in& GetCliAddr() const { return _cli_addr; }
	int GetToSvrFd() const { return _to_svr_fd; }
	int GetToCliFd() const { return _to_cli_fd; }
	
	bool Tick(int64_t now_ms)
	{
		int do_send = false;
		size_t limit_bits = (now_ms-_last_tick_ms)*_bits_per_ms;

		{
		size_t size = 0;
		auto it=_to_svr_buffer.begin();
		while(it!=_to_svr_buffer.end())
		{
			int64_t t = it->first;
			if(t > now_ms) break;

			const string& data = it->second;
			if(limit_bits>0)
			{
				size += data.size();
				if((size_t)limit_bits<size) 
				{
					//fprintf(stderr, "limit_bits=%ld, size=%ld\n", limit_bits, size);
					break;
				}
			}
			//fprintf(stderr, "send _to_svr_fd=%d\n", _to_svr_fd);
			int ret = send(_to_svr_fd, data.c_str(), data.size(), 0);
			if(ret <= 0)
			{
				fprintf(stderr, "send _to_svr_fd=%d, ret=%d\n", _to_svr_fd, ret);
				return false;
			}
			do_send = true;
			_to_svr_buffer.erase(it);

			it = _to_svr_buffer.begin();
		}
		}

		{
		size_t size = 0;
		auto it=_to_cli_buffer.begin();
		while(it!=_to_cli_buffer.end())
		{
			int64_t t = it->first;
			if(t > now_ms) break;

			const string& data = it->second;
			if(limit_bits>0)
			{
				size += data.size();
				if((size_t)limit_bits<size) 
				{
					//fprintf(stderr, "limit_bits=%ld, size=%ld\n", limit_bits, size);
					break;
				}
			}
			//fprintf(stderr, "send to_cli_fd=%d\n", to_cli_fd);
			int ret = send(_to_cli_fd, data.c_str(), data.size(), 0);
			if(ret <= 0)
			{
				fprintf(stderr, "send _to_cli_fd=%d, ret=%d\n", _to_cli_fd, ret);
				return false;
			}
			do_send = true;
			_to_cli_buffer.erase(it);

			it = _to_cli_buffer.begin();
		}
		}
		if(do_send) _last_active_time_ms = now_ms;
		return true;
	}

	bool Update(int64_t now_ms)
	{
		if(now_ms-_last_active_time_ms > _close_period_ms) 
		{
			fprintf(stderr, "Link::Update _to_svr_fd=%d, _to_cli_fd=%d, now_ms=%ld, _last_active_time_ms=%ld, _close_period_ms=%d\n", _to_svr_fd, _to_cli_fd, now_ms, _last_active_time_ms, _close_period_ms);
			return false;
		}
		if(_Bps>0) 
		{
			if(now_ms-_last_tick_ms>10) 
			{
				//fprintf(stderr, "Do Tick 1 _to_svr_fd=%d, now_ms=%ld, _last_tick_ms=%ld\n", _to_svr_fd, now_ms, _last_tick_ms);
				bool ret = Tick(now_ms);
				_last_tick_ms = now_ms;
				return ret;
			}
		}
		else
		{
			//fprintf(stderr, "Do Tick 2 _to_svr_fd=%d, now_ms=%ld, _last_tick_ms=%ld\n", _to_svr_fd, now_ms, _last_tick_ms);
			return Tick(now_ms);
		}
		return true;
	}

	void OnReceiveData(int64_t now_ms, bool to_svr, const string& data)
	{
		//fprintf(stderr, "OnReceiveData _to_svr_fd=%d, _to_cli_fd=%d, now_ms=%ld, _last_active_time_ms=%ld, to_svr=%d\n", _to_svr_fd, _to_cli_fd, now_ms, _last_active_time_ms, to_svr);
		_last_active_time_ms = now_ms;

		if(to_svr)
		{
			_to_svr_buffer.insert(make_pair(now_ms, data));
		}
		else
		{
			_to_cli_buffer.insert(make_pair(now_ms, data));
		}
	}
	
	int64_t GetCacheDataCount()
	{
		return (int64_t)(_to_svr_buffer.size() + _to_cli_buffer.size());
	}

};

class LinkManager
{
	map<string, Link*> _cli_addr_2_link;
	map<int, Link*> _to_svr_fd_2_link;
	map<int, Link*> _to_cli_fd_2_link;
	set<int> _to_svr_fds;
	set<int> _to_cli_fds;

public:
	static LinkManager& GetInstance()
	{
		static LinkManager instance;
		return instance;
	}

	void Update(int64_t now_ms)
	{
		set<string> will_delete_cli_addr_set;
		set<int> will_delete_to_svr_fd_set;
		set<int> will_delete_to_cli_fd_set;

		for(auto it=_cli_addr_2_link.begin(); it!=_cli_addr_2_link.end(); ++it)
		{
			Link *link = it->second;
			if(!link->Update(now_ms))
			{
				will_delete_cli_addr_set.insert(ConvertAddr2Str(link->GetCliAddr()));
				will_delete_to_svr_fd_set.insert(link->GetToSvrFd());
				will_delete_to_cli_fd_set.insert(link->GetToCliFd());
				delete link; //do close(to_svr_fd)
			}
		}
		//clear
		for(auto it=will_delete_cli_addr_set.begin(); it!=will_delete_cli_addr_set.end(); ++it)
		{
			_cli_addr_2_link.erase(*it);
		}
		for(auto it=will_delete_to_svr_fd_set.begin(); it!=will_delete_to_svr_fd_set.end(); ++it)
		{
			_to_svr_fd_2_link.erase(*it);
			_to_svr_fds.erase(*it);
		}
		for(auto it=will_delete_to_cli_fd_set.begin(); it!=will_delete_to_cli_fd_set.end(); ++it)
		{
			_to_cli_fd_2_link.erase(*it);
			_to_cli_fds.erase(*it);
		}
	}

	Link* FindByClientAddr(const sockaddr_in& addr)
	{
		string str = ConvertAddr2Str(addr);
		auto it = _cli_addr_2_link.find(str);
		if(it==_cli_addr_2_link.end()) return 0;
		return it->second;
	}
	Link* FindByToSvrFD(int fd)
	{
		auto it = _to_svr_fd_2_link.find(fd);
		if(it==_to_svr_fd_2_link.end()) return 0;
		return it->second;
	}
	Link* FindByToCliFD(int fd)
	{
		auto it = _to_cli_fd_2_link.find(fd);
		if(it==_to_cli_fd_2_link.end()) return 0;
		return it->second;
	}

	Link* CreateLink(int64_t now_ms, const sockaddr_in& cli_addr, int to_svr_fd, int close_period_ms, int to_cli_fd, int mbps)
	{
		Link *link = new Link(now_ms, cli_addr, to_svr_fd, close_period_ms, to_cli_fd, mbps);
		_cli_addr_2_link[ConvertAddr2Str(cli_addr)] = link;
		_to_svr_fd_2_link[to_svr_fd] = link;
		_to_cli_fd_2_link[to_cli_fd] = link;
		_to_svr_fds.insert(to_svr_fd);
		_to_cli_fds.insert(to_cli_fd);
		return link;
	}

	int64_t GetCacheDataCount()
	{
		int64_t count = 0;
		for(auto it = _to_svr_fd_2_link.begin(); it != _to_svr_fd_2_link.end(); ++it)
		{
			Link *link = it->second;
			count += link->GetCacheDataCount();
		}
		return count;
	}

	const set<int>& GetAllToSvrFd() const { return _to_svr_fds; }
	const set<int>& GetAllToCliFd() const { return _to_cli_fds; }


private:
	string ConvertAddr2Str(const sockaddr_in& addr)
	{
		string str = inet_ntoa(addr.sin_addr);
		str += ":";
		char buf[100];
		snprintf(buf, sizeof(buf), "%d", ntohs(addr.sin_port));
		str += buf;
		return str;
	}
};

void SetNonBlock(int fd, bool non_block)
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
        fcntl(fd, F_SETFL, f);
}

void signal_func(int sig)
{
	fprintf(stderr, "signal_func SIGPIPE sig=%d\n", sig);
}

int main(int argc, char *argv[])
{
	signal(SIGPIPE, signal_func);

	unsigned short listen_port = 9231;
	string to_svr_ip = "127.0.0.1";
	unsigned short to_svr_port = 9237;
	int close_period_ms = 10*60*1000;
	int mbps = 0;
	int Bps = 0;

	//read conf
	FILE *fp = fopen("./tcp_233.conf", "r");
	if(!fp)
	{
		fprintf(stderr, "fopen(\"tcp_233.conf\") error\n");
		return -1;
	}
	char buf[1024];
	while(fgets(buf, sizeof(buf), fp))
	{
		buf[sizeof(buf)-1] = '\0';

		const char *kb = buf;
		while(isspace(*kb)) kb++;
		const char *ke = kb;
		while(isalnum(*ke) || *ke=='_') ke++;
		if(ke > kb)
		{
			string key(kb, ke-kb);

			while(isspace(*ke) || *ke=='=') ke++;
			const char *vb = ke;
			const char *ve = vb;
			while(isalnum(*ve) || *ve=='.') ve++;
			if(ve > vb)
			{
				string value(vb, ve-vb);
				printf("%s = %s\n", key.c_str(), value.c_str());
				if(key == "listen_port")
				{
					listen_port = (unsigned short)atoi(value.c_str());
				}
				else if(key == "to_svr_ip")
				{
					to_svr_ip = value;
				}
				else if(key == "to_svr_port")
				{
					to_svr_port = (unsigned short)atoi(value.c_str());
				}
				else if(key == "close_period_ms")
				{
					close_period_ms = atoi(value.c_str());
				}
				else if(key == "mbps")
				{
					mbps = atoi(value.c_str());
					if(mbps<0) mbps=0;
					Bps = mbps*1024*1024/8;
				}
			}
		}
	}
	fclose(fp);
	int BUFFER_SIZE = Bps/100;
	printf("Bps = %d\nBUFFER_SIZE=%d\n", Bps, BUFFER_SIZE);

	//srand(time(0));

	//socket
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

	//bind
	sockaddr_in listen_addr;
	memset(&listen_addr, 0, sizeof(listen_addr));
	listen_addr.sin_family = AF_INET;
	listen_addr.sin_addr.s_addr = inet_addr("0.0.0.0");
	listen_addr.sin_port = htons(listen_port);
	if(bind(to_cli_fd, (sockaddr*)&listen_addr, sizeof(listen_addr)) == -1) 
	{
		fprintf(stderr, "bind(to_cli_fd) error\n");
		return -1;
	}
	if(listen(to_cli_fd, SOMAXCONN) == -1)
	{
		fprintf(stderr, "listen(to_cli_fd) error\n");
		return -1;
	}

	//to_svr addr
	sockaddr_in to_svr_addr;
	memset(&to_svr_addr, 0, sizeof(to_svr_addr));
	to_svr_addr.sin_family = AF_INET;
	to_svr_addr.sin_addr.s_addr = inet_addr(to_svr_ip.c_str());
	to_svr_addr.sin_port = htons(to_svr_port);

	//loop
	while(true)
	{
		int max_fd = 0;

		fd_set rset;
		FD_ZERO(&rset);

		set<int> all_fds = LinkManager::GetInstance().GetAllToSvrFd();
		for(auto it=all_fds.begin(); it!=all_fds.end(); ++it)
		{
			int fd = *it;
			if(fd>max_fd) max_fd=fd;
			FD_SET(fd, &rset);
		}
		
		set<int> all_cli_fds = LinkManager::GetInstance().GetAllToCliFd();
		for(auto it=all_cli_fds.begin(); it!=all_cli_fds.end(); ++it)
		{
			int fd = *it;
			if(fd>max_fd) max_fd=fd;
			FD_SET(fd, &rset);
		}


		if(to_cli_fd>max_fd) max_fd=to_cli_fd;
		FD_SET(to_cli_fd, &rset);

		//int64_t cache_count = LinkManager::GetInstance().GetCacheDataCount();
		//fprintf(stderr, "cache_count=%ld\n", cache_count);

		//timeval tmp_tv;
		//gettimeofday(&tmp_tv, 0);
		//int64_t now_ms1 = tmp_tv.tv_sec*1000+tmp_tv.tv_usec/1000;
		
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

		//gettimeofday(&tmp_tv, 0);
		//int64_t now_ms2 = tmp_tv.tv_sec*1000+tmp_tv.tv_usec/1000;
		//if(now_ms2 - now_ms1 < 1) usleep(10*1000);
		//fprintf(stderr, "now_ms1=%ld, now_ms2=%ld, now_ms2-now_ms1=%ld\n", now_ms1, now_ms2, now_ms2-now_ms1);
        
		gettimeofday(&tv, 0);
		int64_t now_ms = tv.tv_sec*1000+tv.tv_usec/1000;
		//fprintf(stderr, "now=%ld\n", now_ms);
        
		if(FD_ISSET(to_cli_fd, &rset))
		{
			int fd = to_cli_fd;
			sockaddr_in src_addr;
			socklen_t l = sizeof(src_addr);
        
			int nowfd = accept(fd, (struct sockaddr*)&src_addr, &l);
			//fprintf(stderr, "fd == to_cli_fd accept fd=%d, nowfd=%d\n", fd, nowfd);
			if(nowfd == -1)
			{
				//fprintf(stderr, "socket(to_cli_fd) error\n");
			}
			else
			{
				Link *link = LinkManager::GetInstance().FindByClientAddr(src_addr);
				if(!link)
				{
					//new link
					int to_svr_fd = socket(AF_INET, SOCK_STREAM, 0);
					fprintf(stderr, "new link to_svr_fd=%d\n", to_svr_fd);
					if(to_svr_fd == -1)
					{
						fprintf(stderr, "socket(to_svr_fd) error\n");
					}
					else
					{
						fprintf(stderr, "CreateLink to_svr_fd=%d, now=%ld\n", to_svr_fd, now_ms);
						SetNonBlock(to_svr_fd, true);
						connect(to_svr_fd, (struct sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
						link = LinkManager::GetInstance().CreateLink(now_ms, src_addr, to_svr_fd, close_period_ms, nowfd, Bps);
					}
				}
			}
        
		}
        
		for(auto it=all_fds.begin(); it!=all_fds.end(); ++it)
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
					//data from server
					Link *link = LinkManager::GetInstance().FindByToSvrFD(fd);
					if(link)
					{
						if(ret > BUFFER_SIZE)
						{
							int size = (int)ret;
							int i = 0;
							while(size > 0)
							{
								string data(buf+i*BUFFER_SIZE, (size>BUFFER_SIZE)?BUFFER_SIZE:size);
								//fprintf(stderr, "data.size()=%lu, i=%d, i*BUFFER_SIZE=%d\n", data.size(), i, i*BUFFER_SIZE);
								link->OnReceiveData(now_ms, false, data);
								++i;
								size-=BUFFER_SIZE;
							}
						}
						else
						{
							string data(buf, ret);
							link->OnReceiveData(now_ms, false, data);
						}
					}
				}
				else
				{
					//fprintf(stderr, "all_srv_fds recv ret=%ld error=%d srv=%d\n", ret, errno, fd);
				}
			}
		}
		
		//fprintf(stderr, "all_cli_fds size()=%lu\n", all_cli_fds.size());
		for(auto it=all_cli_fds.begin(); it!=all_cli_fds.end(); ++it)
		{
			int fd = *it;
			if(FD_ISSET(fd, &rset))
			{
				char buf[1024*100];
				//char buf[BUFFER_SIZE];
				ssize_t ret = recv(fd, buf, sizeof(buf), 0);
				//fprintf(stderr, "all_cli_fds recv ret=%ld error=%d fd=%d\n", ret, errno, fd);
				if(ret > 0)
				{
					//data from client
					Link *link = LinkManager::GetInstance().FindByToCliFD(fd);
					if(link)
					{
						if(ret > BUFFER_SIZE)
						{
							int size = (int)ret;
							int i = 0;
							while(size > 0)
							{
								string data(buf+i*BUFFER_SIZE, (size>BUFFER_SIZE)?BUFFER_SIZE:size);
								link->OnReceiveData(now_ms, true, data);
								++i;
								size-=BUFFER_SIZE;
							}
						}
						else
						{
							string data(buf, ret);
							link->OnReceiveData(now_ms, true, data);
						}
					}
				}
				else
				{
					//fprintf(stderr, "all_cli_fds recv ret=%ld error=%d fd=%d\n", ret, errno, fd);
				}
			}
		}
		
		LinkManager::GetInstance().Update(now_ms);
		//for select
		usleep(10*1000);
/*
		if(now_ms > 1544588784000)
		{
			exit(0);
		}
*/
//		sleep(1);
	}

	return 0;
}

