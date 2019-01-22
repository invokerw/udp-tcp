#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <string.h>
#include <vector>
#include <map>
#include <list>
#include <set>
#include "common.h"
#include "link.h"

using namespace std;

bool is_server = false; 
bool is_encrypt = false; //越过 GFW
bool extra_send = false; //用于降低丢包率

class LinkManager
{
	map<string, Link*> _cli_addr_2_link;
	//map<int, Link*> _to_svr_fd_2_link;
	map<int, Link*> _id_2_link;
	set<int> _to_svr_fds;
	int _id_stub;

public:
	static LinkManager& GetInstance()
	{
		static LinkManager instance;
		return instance;
	}

	void Update(int64_t now_ms, int to_cli_fd, const struct sockaddr *svr_addr, socklen_t svr_addr_len)
	{
		set<string> will_delete_cli_addr_set;
		//set<int> will_delete_to_svr_fd_set;

		for(auto it=_cli_addr_2_link.begin(); it!=_cli_addr_2_link.end(); ++it)
		{
			Link *link = it->second;
			if(!link->Update(now_ms, to_cli_fd, svr_addr, svr_addr_len))
			{
				will_delete_cli_addr_set.insert(ConvertAddr2Str(link->GetCliAddr()));
				//will_delete_to_svr_fd_set.insert(link->GetToSvrFd());
				delete link; //do close(to_svr_fd)
			}
		}
		//clear
		for(auto it=will_delete_cli_addr_set.begin(); it!=will_delete_cli_addr_set.end(); ++it)
		{
			_cli_addr_2_link.erase(*it);
		}
		/*
		for(auto it=will_delete_to_svr_fd_set.begin(); it!=will_delete_to_svr_fd_set.end(); ++it)
		{
			_to_svr_fd_2_link.erase(*it);
			_to_svr_fds.erase(*it);
		}
		*/
	}

	Link* FindByClientAddr(const sockaddr_in& addr)
	{
		string str = ConvertAddr2Str(addr);
		auto it = _cli_addr_2_link.find(str);
		if(it==_cli_addr_2_link.end()) return 0;
		return it->second;
	}
	/*
	Link* FindByToSvrFD(int fd)
	{
		auto it = _to_svr_fd_2_link.find(fd);
		if(it==_to_svr_fd_2_link.end()) return 0;
		return it->second;
	}
	*/
	Link* FindById(int id)
	{
		auto it = _id_2_link.find(id);
		if(it==_id_2_link.end()) return 0;
		return it->second;
	}

	Link* CreateLink(int64_t now_ms, const sockaddr_in& cli_addr, int to_svr_fd, int to_svr_delay_ms_min, int to_svr_delay_ms_max,
	                 int to_cli_delay_ms_min, int to_cli_delay_ms_max, int to_svr_lost_packet_percent, int to_cli_lost_packet_percent,
	                 int close_period_ms)
	{
		Link *link = new Link(now_ms, cli_addr, to_svr_fd, to_svr_delay_ms_min, to_svr_delay_ms_max, to_cli_delay_ms_min, to_cli_delay_ms_max,
		                      to_svr_lost_packet_percent, to_cli_lost_packet_percent, close_period_ms, _id_stub++, is_server, extra_send, EXTRA_SEND_COUNT);
		_cli_addr_2_link[ConvertAddr2Str(cli_addr)] = link;
		//_to_svr_fd_2_link[to_svr_fd] = link;
		_to_svr_fds.insert(to_svr_fd);
		_id_2_link[link->GetId()] = link;
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

	LinkManager(): _id_stub(LINK_COUNT) {}
};

void SetNonBlock(int fd, bool non_block)
{
	int f = fcntl(fd, F_GETFL);
	if (non_block) 
	{
		// non-block
		if(f & O_NONBLOCK) return;
		else f |= O_NONBLOCK;
	} 
	else 
	{
		// block
		if(f & O_NONBLOCK) f &= ~O_NONBLOCK;
		else return;
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
	int delay_limit_ms = 50;


	int64_t last_heartbeat_time_ms = 0;

	//read conf
	FILE *fp = fopen("./udp_client.conf", "r");
	if(!fp)
	{
		fprintf(stderr, "fopen(\"udp_client.conf\") error\n");
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
				/*
				else if(key == "is_server")
				{
					is_server = atoi(value.c_str());
				}
				*/
				else if(key == "is_encrypt")
				{
					is_encrypt = atoi(value.c_str());
				}
				else if(key == "extra_send")
				{
					extra_send = atoi(value.c_str());
				}
				else if(key == "delay_limit_ms")
				{
					delay_limit_ms = atoi(value.c_str());
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
	
	//std::string index_str = SetIndex(32521);
	//fprintf(stderr, "GetIndex, %d\n", GetIndex(index_str));
	//exit(0);
	
	//to_svr addr
	sockaddr_in to_svr_addr;
	memset(&to_svr_addr, 0, sizeof(to_svr_addr));
    to_svr_addr.sin_family = AF_INET;
    to_svr_addr.sin_addr.s_addr = inet_addr(to_svr_ip.c_str());
    to_svr_addr.sin_port = htons(to_svr_port);
	

	int to_svr_fd = socket(AF_INET, SOCK_DGRAM, 0);
	SetNonBlock(to_svr_fd, true);
	
	//测试延迟 超过延迟退出
	int count = 0;
	int find_count = 0;
	int64_t delay_ms = 0;
	while(true)
	{
		{
			int64_t now_ms = NowMS();
			char buf[50];
			snprintf(buf, sizeof(buf), "%ld", (int64_t)now_ms);
            
			std::string data(buf);
			//加上索引
			data += SetIndex(0);
			//不是服务器，发向服务器的要加密
			if(is_encrypt) EncryptStr(data);
			sendto(to_svr_fd, data.c_str(), data.size(), 0, (const sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
		}

		fd_set rset;
		FD_ZERO(&rset);
		FD_SET(to_svr_fd, &rset);

		
		{
		timeval tv;
		tv.tv_sec = 0;
		tv.tv_usec = 10*1000;
		if(select(to_svr_fd+1, &rset, 0, 0, &tv) == -1)
		{
			if(errno != EINTR)
			{
				fprintf(stderr, "select error\n");
				return -1;
			}
			FD_ZERO(&rset); //do clear
		}
		}

		if(FD_ISSET(to_svr_fd, &rset))
		{
			char buf[1024*100];
			sockaddr_in src_addr;
			socklen_t l = sizeof(src_addr);
			ssize_t ret = recvfrom(to_svr_fd, buf, sizeof(buf), 0, (sockaddr*)&src_addr, &l);
			if(ret > 0)
			{
				string data(buf, ret);
				if(is_encrypt && !DecryptStr(data)) 
				{
					fprintf(stderr, "Err, DecryptStr data.size()=%lu to_svr=false\n", data.size());
					continue;
				}
				//get id
				if((int)data.size() < INDEX_SAVE_BYTE) continue;
				//std::string id_str = data.substr(data.size()-INDEX_SAVE_BYTE, INDEX_SAVE_BYTE);
				//int id = GetIndex(id_str);
				data.resize(data.length()-INDEX_SAVE_BYTE);
				int64_t begin_time = strtoll(data.c_str(), 0, 10);
				int64_t end_time = NowMS();
				delay_ms += end_time - begin_time;
				last_heartbeat_time_ms = end_time;
				//fprintf(stderr, "HeartBeat, data.size()=%lu, data=%s, id=%d, begin_time=%ld, end_time=%ld, delay=%ld\n", data.size(), data.c_str(), id, begin_time, end_time, end_time-begin_time);
				++count;
			}
		}
		if(count!=0 && count%10==0) 
		{
			delay_ms = delay_ms/count;
			find_count = find_count + 1;
			fprintf(stderr, "avg delay time=%ld, to_svr_fd=%d\n", delay_ms, to_svr_fd);
			if(delay_ms > (int64_t)delay_limit_ms)
			{
				fprintf(stderr, "avg delay time=%ld>delay_limit=%d, next\n", delay_ms, delay_limit_ms);
				close(to_svr_fd);
				sleep(1);
				delay_ms = 0;
				count = 0;
				if(find_count%10==0) 
				{
					fprintf(stderr, "cant find good delay ms, exit\n");
					exit(0);
				}
				int to_svr_fd = socket(AF_INET, SOCK_DGRAM, 0);
				SetNonBlock(to_svr_fd, true);
			}
			else
			{
				break;
			}
		}
	}

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
							link = LinkManager::GetInstance().CreateLink(now_ms, src_addr, to_svr_fd,
							                                             to_svr_delay_ms_min, to_svr_delay_ms_max,
							                                             to_cli_delay_ms_min, to_cli_delay_ms_max,
							                                             to_svr_lost_packet_percent, to_cli_lost_packet_percent,
							                                             close_period_ms);
						}
						//加上包的 ID
						if(extra_send)
						{
							data += SetIndex(link->GetPacketIdIndex());
							link->INCPacketIdIndex();
							if(link->GetPacketIdIndex() >= MAX_PACKAGE_INDEX_ID) link->ReSetPacketIdIndex();
						}

						//加上索引
						data += SetIndex(link->GetId());
						//不是服务器，发向服务器的要加密
						if(is_encrypt) EncryptStr(data);
						link->OnReceiveData(now_ms, true, data);
					}
					else if(fd == to_svr_fd)
					{
						//data from server
						//不是服务器，发向客户端的要解密
						if(is_encrypt && !DecryptStr(data)) 
						{
							fprintf(stderr, "Err, DecryptStr data.size()=%lu to_svr=false\n", data.size());
							continue;
						}
						//get id
						if((int)data.size() < INDEX_SAVE_BYTE) continue;
						std::string id_str = data.substr(data.size()-INDEX_SAVE_BYTE, INDEX_SAVE_BYTE);
						int id = GetIndex(id_str);
						data.resize(data.length()-INDEX_SAVE_BYTE);
						Link *link = LinkManager::GetInstance().FindById(id);
						if(!link) continue;
						if(extra_send)
						{
							if((int)data.size() < INDEX_SAVE_BYTE) continue;
							std::string index_str = data.substr(data.size()-INDEX_SAVE_BYTE, INDEX_SAVE_BYTE);
							int index = GetIndex(index_str);
							if(index < 0 || index >= MAX_PACKAGE_INDEX_ID)
							{
								fprintf(stderr, "to_svr=false, index=%d<0 || index >= MAX_PACKAGE_INDEX_ID=%d, continue\n", index, MAX_PACKAGE_INDEX_ID);
								continue;
							}
							if(link->IsDuplicatePacket(index, now_ms))
							{
								//fprintf(stderr, "to_svr=false, _rev_packet_id_to_time find index=%d, IsDuplicatePacket, continue\n", index);
								continue;
							}
							data.resize(data.length()-INDEX_SAVE_BYTE);
						}
						link->OnReceiveData(now_ms, false, data);
					}
					else
					{
						// ?
						fprintf(stderr, "???\n");
					}
				}
			}
		}
		
		LinkManager::GetInstance().Update(now_ms, to_cli_fd, (const sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
#if 1
		//DoHeartBeat
		{
			int64_t now_ms = NowMS();
			if(now_ms - last_heartbeat_time_ms >= 1000)
			{
				char buf[50];
				snprintf(buf, sizeof(buf), "%ld", (int64_t)now_ms);
                
				std::string data(buf);
				//加上索引
				data += SetIndex(0);
				//不是服务器，发向服务器的要加密
				if(is_encrypt) EncryptStr(data);
				sendto(to_svr_fd, data.c_str(), data.size(), 0, (const sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
				last_heartbeat_time_ms = now_ms;
			}
		}
#endif
	}

	return 0;
}

