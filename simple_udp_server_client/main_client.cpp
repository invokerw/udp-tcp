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
	int to_svr_fd = socket(AF_INET, SOCK_DGRAM, 0);
	SetNonBlock(to_svr_fd, true);

	//to_svr addr
	sockaddr_in to_svr_addr;
	memset(&to_svr_addr, 0, sizeof(to_svr_addr));
	to_svr_addr.sin_family = AF_INET;
	to_svr_addr.sin_addr.s_addr = inet_addr(to_svr_ip.c_str());
	to_svr_addr.sin_port = htons(to_svr_port);
	
	while(true)
	{
		string data = "Hello World";
		ssize_t ret = sendto(to_svr_fd, data.c_str(), data.size(), 0, (struct sockaddr *)&to_svr_addr, sizeof(to_svr_addr));
		if(ret == -1 && errno != EAGAIN)
		{
			fprintf(stderr, "sendto failed.\n"); 
			return -1;
		}

		char buf[1024*100];
		sockaddr_in src_addr;
		socklen_t l = sizeof(src_addr);
		ret = recvfrom(to_svr_fd, buf, sizeof(buf), 0, (sockaddr*)&src_addr, &l);
		if(ret > 0)
		{
			fprintf(stderr, "recive from server: %s\n", buf);
		}
		else if(ret == -1 && errno != EAGAIN)
		{
			fprintf(stderr, "recv failed.\n");
			return -1;
		}
		usleep(100);
	}

	return 0;
}


















