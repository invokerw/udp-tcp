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
#include "key_in_c"

using namespace std;

bool is_server = false; 
bool is_encrypt = false;

#define MAX_HASH 8

inline unsigned int DJBHash(const std::string& data)
{
	unsigned int hash = 5381;
	const unsigned char *p = (const unsigned char*)data.data();
	for(size_t i=0; i<data.size(); i++)
	{
		hash += (hash << 5) + p[i];
	}
	return (hash&0x7fffffff);
}

inline void EncryptStr(std::string &data)
{
	char tmp[MAX_HASH];
	unsigned int hash = DJBHash(data);
	//fprintf(stderr, "EncryptStr, %u, len=%lu\n", hash, data.length());
	for(int i = 0;i < MAX_HASH; ++i)
	{
		tmp[i] = hash%16;
		hash = hash/16;
		data.push_back(tmp[i]);
	}
	//fprintf(stderr, "%d %d %d %d %d %d %d %d\n", tmp[0], tmp[1], tmp[2], tmp[3], tmp[4], tmp[5], tmp[6], tmp[7]);
	
	unsigned char *p = (unsigned char*)data.data();
	unsigned j = 0;
	for(size_t i=0; i<data.size(); i++)
	{
		if(j >= __1_len) j = 0;
		p[i] = p[i]^__1[j++];	
	}
}

inline bool DecryptStr(std::string &data)
{
	if(data.length() < MAX_HASH) return false;
	unsigned char *p = (unsigned char*)data.data();
	unsigned j = 0;
	for(size_t i=0; i<data.size(); i++)
	{
		if(j >= __1_len) j = 0;
		p[i] = p[i]^__1[j++];	
	}

	unsigned int hash = DJBHash(std::string(data, 0, data.size()-8));
	//fprintf(stderr, "DecryptStr, %u, len=%lu\n", hash, data.length());

	//fprintf(stderr, "%d %d %d %d %d %d %d %d\n", data[data.length()-1-7], data[data.length()-1-6], data[data.length()-1-5], data[data.length()-1-4], data[data.length()-1-3], data[data.length()-1-2], data[data.length()-1-1], data[data.length()-1-0]);

	for(int i = 0;i < MAX_HASH; ++i)
	{
		unsigned int key = hash%16;
		if((unsigned int)data[data.length()-MAX_HASH+i] != key) return false;
		hash = hash/16;
	}

	data.resize(data.length()-MAX_HASH);
	
	return true;
}

//only for UDP
class Link
{
	int _to_svr_delay_ms_min;
	int _to_svr_delay_ms_max;
	int _to_cli_delay_ms_min;
	int _to_cli_delay_ms_max;
	int _to_svr_lost_packet_percent;
	int _to_cli_lost_packet_percent;
	int _close_period_ms;

	sockaddr_in _cli_addr;
	socklen_t _cli_addr_len;
	int _to_svr_fd;

	multimap<int64_t, string> _to_svr_buffer; //time(ms)=>data
	multimap<int64_t, string> _to_cli_buffer;

	int64_t _last_receive_data_time_ms;

	int _to_svr_lost_remain;
	int _to_cli_lost_remain;

public:
	Link(int64_t now_ms, const sockaddr_in& cli_addr, int to_svr_fd, int to_svr_delay_ms_min, int to_svr_delay_ms_max, int to_cli_delay_ms_min,
	     int to_cli_delay_ms_max, int to_svr_lost_packet_percent, int to_cli_lost_packet_percent, int close_period_ms)
	    : _to_svr_delay_ms_min(to_svr_delay_ms_min), _to_svr_delay_ms_max(to_svr_delay_ms_max), _to_cli_delay_ms_min(to_cli_delay_ms_min),
	      _to_cli_delay_ms_max(to_cli_delay_ms_max), _to_svr_lost_packet_percent(to_svr_lost_packet_percent), 
	      _to_cli_lost_packet_percent(to_cli_lost_packet_percent), _close_period_ms(close_period_ms), _to_svr_fd(to_svr_fd), _last_receive_data_time_ms(now_ms),
	      _to_svr_lost_remain(0), _to_cli_lost_remain(0)
	{
		_cli_addr_len = sizeof(_cli_addr);
		memcpy(&_cli_addr, &cli_addr, _cli_addr_len);
	}
	~Link()
	{
		close(_to_svr_fd);
	}

	const sockaddr_in& GetCliAddr() const { return _cli_addr; }
	int GetToSvrFd() const { return _to_svr_fd; }

	bool Update(int64_t now_ms, int to_cli_fd, const struct sockaddr *svr_addr, socklen_t svr_addr_len)
	{
		if(now_ms-_last_receive_data_time_ms > _close_period_ms) return false;

		{
		auto it=_to_svr_buffer.begin();
		while(it!=_to_svr_buffer.end())
		{
			int64_t t = it->first;
			if(t > now_ms) break;

			const string& data = it->second;
			sendto(_to_svr_fd, data.c_str(), data.size(), 0, svr_addr, svr_addr_len);

			_to_svr_buffer.erase(it);

			it = _to_svr_buffer.begin();
		}
		}

		{
		auto it=_to_cli_buffer.begin();
		while(it!=_to_cli_buffer.end())
		{
			int64_t t = it->first;
			if(t > now_ms) break;

			const string& data = it->second;
			sendto(to_cli_fd, data.c_str(), data.size(), 0, (const sockaddr*)&_cli_addr, _cli_addr_len);

			_to_cli_buffer.erase(it);

			it = _to_cli_buffer.begin();
		}
		}

		return true;
	}

	void OnReceiveData(int64_t now_ms, bool to_svr, /*const*/ string& data)
	{
		_last_receive_data_time_ms = now_ms;

		if(to_svr)
		{
			if(is_server)
			{
				//是服务器，发向 src 服务器的要解密
				if(is_encrypt && !DecryptStr(data)) 
				{
					fprintf(stderr, "Err, DecryptStr data.size()=%lu to_svr=%d\n", data.size(), to_svr);
					return;
				}
			}
			else
			{
				//不是服务器，发向服务器的要加密
				if(is_encrypt) EncryptStr(data);
			}


			if(_to_svr_lost_remain > 0)
			{
				_to_svr_lost_remain--;
				//fprintf(stderr, "to server lost\n");
				return; //lost
			}
			if(_to_svr_lost_packet_percent>0 && (rand()%10000)<_to_svr_lost_packet_percent)
			{
				_to_svr_lost_remain = 10;
				fprintf(stderr, "to server lost\n");
				return; //lost
			}

			int n = _to_svr_delay_ms_max-_to_svr_delay_ms_min;
			if(n>0) n=rand()%n;
			int64_t t = now_ms+_to_svr_delay_ms_min+n;
			_to_svr_buffer.insert(make_pair(t, data));
		}
		else
		{
			if(is_server)
			{
				//是服务器，发向客户端的要加密
				if(is_encrypt) EncryptStr(data);
			}
			else
			{
				//不是服务器，发向客户端的要解密
				if(is_encrypt && !DecryptStr(data)) 
				{
					fprintf(stderr, "Err, DecryptStr data.size()=%lu to_svr=%d\n", data.size(), to_svr);
					return;
				}
			}

			if(_to_cli_lost_remain > 0)
			{
				_to_cli_lost_remain--;
				//fprintf(stderr, "to client lost\n");
				return; //lost
			}
			if(_to_cli_lost_packet_percent>0 && (rand()%10000)<_to_cli_lost_packet_percent)
			{
				_to_cli_lost_remain = 10;
				fprintf(stderr, "to client lost\n");
				return; //lost
			}

			int n = _to_cli_delay_ms_max-_to_cli_delay_ms_min;
			if(n>0) n=rand()%n;
			int64_t t = now_ms+_to_cli_delay_ms_min+n;
			_to_cli_buffer.insert(make_pair(t, data));
		}
	}
};

class LinkManager
{
	map<string, Link*> _cli_addr_2_link;
	map<int, Link*> _to_svr_fd_2_link;
	set<int> _to_svr_fds;

public:
	static LinkManager& GetInstance()
	{
		static LinkManager instance;
		return instance;
	}

	void Update(int64_t now_ms, int to_cli_fd, const struct sockaddr *svr_addr, socklen_t svr_addr_len)
	{
		set<string> will_delete_cli_addr_set;
		set<int> will_delete_to_svr_fd_set;

		for(auto it=_cli_addr_2_link.begin(); it!=_cli_addr_2_link.end(); ++it)
		{
			Link *link = it->second;
			if(!link->Update(now_ms, to_cli_fd, svr_addr, svr_addr_len))
			{
				will_delete_cli_addr_set.insert(ConvertAddr2Str(link->GetCliAddr()));
				will_delete_to_svr_fd_set.insert(link->GetToSvrFd());
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

	Link* CreateLink(int64_t now_ms, const sockaddr_in& cli_addr, int to_svr_fd, int to_svr_delay_ms_min, int to_svr_delay_ms_max,
	                 int to_cli_delay_ms_min, int to_cli_delay_ms_max, int to_svr_lost_packet_percent, int to_cli_lost_packet_percent,
	                 int close_period_ms)
	{
		Link *link = new Link(now_ms, cli_addr, to_svr_fd, to_svr_delay_ms_min, to_svr_delay_ms_max, to_cli_delay_ms_min, to_cli_delay_ms_max,
		                      to_svr_lost_packet_percent, to_cli_lost_packet_percent, close_period_ms);
		_cli_addr_2_link[ConvertAddr2Str(cli_addr)] = link;
		_to_svr_fd_2_link[to_svr_fd] = link;
		_to_svr_fds.insert(to_svr_fd);
		return link;
	}

	const set<int>& GetAllToSvrFd() const { return _to_svr_fds; }


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

int main(int argc, char *argv[])
{
	unsigned short listen_port = 9231;
	string to_svr_ip = "127.0.0.1";
	unsigned short to_svr_port = 9237;
	int to_svr_delay_ms_min = 0;
	int to_svr_delay_ms_max = 0;
	int to_cli_delay_ms_min = 0;
	int to_cli_delay_ms_max = 0;
	int to_svr_lost_packet_percent = 0;
	int to_cli_lost_packet_percent = 0;
	int close_period_ms = 10*60*1000;

	//read conf
	FILE *fp = fopen("./udp_delay.conf", "r");
	if(!fp)
	{
		fprintf(stderr, "fopen(\"udp_delay.conf\") error\n");
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
				else if(key == "to_svr_delay_ms_min")
				{
					to_svr_delay_ms_min = atoi(value.c_str());
				}
				else if(key == "to_svr_delay_ms_max")
				{
					to_svr_delay_ms_max = atoi(value.c_str());
				}
				else if(key == "to_cli_delay_ms_min")
				{
					to_cli_delay_ms_min = atoi(value.c_str());
				}
				else if(key == "to_cli_delay_ms_max")
				{
					to_cli_delay_ms_max = atoi(value.c_str());
				}
				else if(key == "to_svr_lost_packet_percent")
				{
					to_svr_lost_packet_percent = atoi(value.c_str());
				}
				else if(key == "to_cli_lost_packet_percent")
				{
					to_cli_lost_packet_percent = atoi(value.c_str());
				}
				else if(key == "close_period_ms")
				{
					close_period_ms = atoi(value.c_str());
				}
				else if(key == "is_server")
				{
					is_server = atoi(value.c_str());
				}
				else if(key == "is_encrypt")
				{
					is_encrypt = atoi(value.c_str());
				}
			}
		}
	}
	fclose(fp);

	srand(time(0));
	
	//std::string tmp = "WEIFEI";
	//EncryptStr(tmp);
	//fprintf(stderr, "EncryptStr, %s\n", tmp.c_str());
	//DecryptStr(tmp);
	//fprintf(stderr, "DecryptStr, %s\n", tmp.c_str());
	
	//socket
    int to_cli_fd = socket(AF_INET, SOCK_DGRAM, 0); //接收客户端来的数据
    if(to_cli_fd == -1)
	{
		fprintf(stderr, "socket(to_cli_fd) error\n");
		return -1;
	}
	//noblock
	SetNonBlock(to_cli_fd, true);
    
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
		all_fds.insert(to_cli_fd);

		for(auto it=all_fds.begin(); it!=all_fds.end(); ++it)
		{
			int fd = *it;
			if(fd>max_fd) max_fd=fd;
			FD_SET(fd, &rset);
		}

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

		gettimeofday(&tv, 0);
		int64_t now_ms = tv.tv_sec*1000+tv.tv_usec/1000;

		for(auto it=all_fds.begin(); it!=all_fds.end(); ++it)
		{
			int fd = *it;
			if(FD_ISSET(fd, &rset))
			{
				char buf[1024*100];

				sockaddr_in src_addr;
				socklen_t l = sizeof(src_addr);
				ssize_t ret = recvfrom(fd, buf, sizeof(buf), 0, (sockaddr*)&src_addr, &l);
				if(ret > 0)
				{
					string data(buf, ret);

					if(fd == to_cli_fd)
					{
						//data from client
						Link *link = LinkManager::GetInstance().FindByClientAddr(src_addr);
						if(!link)
						{
							//new link
							int to_svr_fd = socket(AF_INET, SOCK_DGRAM, 0);
							SetNonBlock(to_svr_fd, true);
							link = LinkManager::GetInstance().CreateLink(now_ms, src_addr, to_svr_fd,
							                                             to_svr_delay_ms_min, to_svr_delay_ms_max,
							                                             to_cli_delay_ms_min, to_cli_delay_ms_max,
							                                             to_svr_lost_packet_percent, to_cli_lost_packet_percent,
							                                             close_period_ms);
						}
						link->OnReceiveData(now_ms, true, data);
					}
					else
					{
						//data from server
						Link *link = LinkManager::GetInstance().FindByToSvrFD(fd);
						if(link)
						{
							link->OnReceiveData(now_ms, false, data);
						}
					}
				}
			}
		}
		
		LinkManager::GetInstance().Update(now_ms, to_cli_fd, (const sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
	}

	return 0;
}

