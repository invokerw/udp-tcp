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

int main()
{
	unsigned short to_svr_port = 9231;
	string to_svr_ip = "127.0.0.1";

	// socket
	int to_svr_fd = socket(AF_INET, SOCK_STREAM, 0);
	if(to_svr_fd == -1)
	{
		fprintf(stderr, "socket(to_svr_fd) error\n");
		return -1;
	}
	int flag = 1;
	if(setsockopt(to_svr_fd, IPPROTO_TCP, TCP_NODELAY, (void*)&flag, sizeof(int)) == -1)
	{
		fprintf(stderr, "setsockopt(to_cli_fd) error\n");
		return -1;
	}

	SetNonBlock(to_svr_fd, true);

	//to_svr addr
	sockaddr_in to_svr_addr;
	memset(&to_svr_addr, 0, sizeof(to_svr_addr));
	to_svr_addr.sin_family = AF_INET;
	to_svr_addr.sin_addr.s_addr = inet_addr(to_svr_ip.c_str());
	to_svr_addr.sin_port = htons(to_svr_port);
	
	connect(to_svr_fd, (struct sockaddr*)&to_svr_addr, sizeof(to_svr_addr));
	
	while(true)
	{
		string data = "Hello World";
		ssize_t ret = send(to_svr_fd, data.c_str(), data.size(), 0);
		if(ret <= 0)
		{
			fprintf(stderr, "sendto failed.\n"); 
			return -1;
		}
		
		char buf[1024*100];
		ret = recv(to_svr_fd, buf, sizeof(buf), 0);
		if(ret > 0)
		{
			string data(buf, ret);
			fprintf(stderr, "recive from server ret = %ld : %s\n", ret, data.c_str());
		}
		else if(ret == -1 && errno != EAGAIN)
		{
			fprintf(stderr, "recv failed.\n");
			return -1;
		}
		usleep(1000);
	}

	return 0;
}


















