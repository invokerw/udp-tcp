#ifndef _LINK_H_
#define _LINK_H_

//#include <map>


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

	std::multimap<int64_t, std::string> _to_svr_buffer; //time(ms)=>data
	std::multimap<int64_t, std::string> _to_cli_buffer;

	int64_t _last_receive_data_time_ms;

	int _to_svr_lost_remain;
	int _to_cli_lost_remain;

	int _id;

	int _packet_id_index;
	std::map<int, int64_t> _rev_packet_id_to_time;
	
	bool _is_server;
	bool _extra_send;
	int _extra_send_count;

public:
	Link(int64_t now_ms, const sockaddr_in& cli_addr, int to_svr_fd, int to_svr_delay_ms_min, int to_svr_delay_ms_max, int to_cli_delay_ms_min,
	     int to_cli_delay_ms_max, int to_svr_lost_packet_percent, int to_cli_lost_packet_percent, int close_period_ms, int id, bool is_server,
		 bool extra_send, int extra_send_count)
	    : _to_svr_delay_ms_min(to_svr_delay_ms_min), _to_svr_delay_ms_max(to_svr_delay_ms_max), _to_cli_delay_ms_min(to_cli_delay_ms_min),
	      _to_cli_delay_ms_max(to_cli_delay_ms_max), _to_svr_lost_packet_percent(to_svr_lost_packet_percent), 
	      _to_cli_lost_packet_percent(to_cli_lost_packet_percent), _close_period_ms(close_period_ms), _to_svr_fd(to_svr_fd), _last_receive_data_time_ms(now_ms),
	      _to_svr_lost_remain(0), _to_cli_lost_remain(0), _id(id), _packet_id_index(0), _is_server(is_server), _extra_send(extra_send), _extra_send_count(extra_send_count)
	{
		_cli_addr_len = sizeof(_cli_addr);
		memcpy(&_cli_addr, &cli_addr, _cli_addr_len);
	}
	~Link()
	{
		//client 端不需要关闭这个唯一一条连接 server端需要关掉
		if(_is_server) close(_to_svr_fd);
	}
	
	const sockaddr_in& GetCliAddr() const { return _cli_addr; }
	int GetToSvrFd() const { return _to_svr_fd; }
	int GetId() const { return _id;}
	int GetPacketIdIndex() { return _packet_id_index;}
	void ReSetPacketIdIndex() { _packet_id_index = 0;}
	void INCPacketIdIndex() { ++_packet_id_index; }
	bool IsDuplicatePacket(int index, int64_t now_ms) 
	{
		auto it = _rev_packet_id_to_time.find(index);
		if(it != _rev_packet_id_to_time.end())
		{
			if(it->second + TIME_OUT_MS > now_ms)
			{
				//重复的包丢掉
				it->second = now_ms;
				return true;
			}
			it->second = now_ms;
		}
		else
		{
			_rev_packet_id_to_time.insert(std::make_pair(index, now_ms));
		}
		return false;
	}


	bool Update(int64_t now_ms, int to_cli_fd, const struct sockaddr *svr_addr, socklen_t svr_addr_len)
	{
		if(now_ms-_last_receive_data_time_ms > _close_period_ms) return false;

		{
		auto it=_to_svr_buffer.begin();
		while(it!=_to_svr_buffer.end())
		{
			int64_t t = it->first;
			if(t > now_ms) break;

			const std::string& data = it->second;
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

			const std::string& data = it->second;
			sendto(to_cli_fd, data.c_str(), data.size(), 0, (const sockaddr*)&_cli_addr, _cli_addr_len);

			_to_cli_buffer.erase(it);

			it = _to_cli_buffer.begin();
		}
		}

		return true;
	}

	void OnReceiveData(int64_t now_ms, bool to_svr, const std::string& data)
	{
		_last_receive_data_time_ms = now_ms;
		//fprintf(stderr, "OnReceiveData, now_ms=%ld, data.size()=%lu, to_svr=%d, id=%d\n", now_ms, data.size(), to_svr, GetId());

		if(to_svr)
		{

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
			_to_svr_buffer.insert(std::make_pair(t, data));
			if(_extra_send && !_is_server) 
			{
				for(int i = 0;i < _extra_send_count; ++i)
				{
					_to_svr_buffer.insert(std::make_pair(t+10+i*10, data));
				}
			}
		}
		else
		{
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
			_to_cli_buffer.insert(std::make_pair(t, data));
			if(_extra_send && _is_server) 
			{
				for(int i = 0;i < _extra_send_count; ++i)
				{
					_to_cli_buffer.insert(make_pair(t+10+i*10, data));
				}
			}
		}
	}
};

#endif // _LINK_H_
