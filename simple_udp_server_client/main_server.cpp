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
	unsigned short listen_port = 9231;

	// socket
	int to_cli_fd = socket(AF_INET, SOCK_DGRAM, 0); //接收客户端来的数据
	if(to_cli_fd == -1)
	{
		fprintf(stderr, "socket(to_cli_fd) error\n");
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
		exit (1);    
	}

	while(true)
	{
		char buf[1024*100];
		sockaddr_in src_addr;
		socklen_t l = sizeof(src_addr);
		ssize_t ret = recvfrom(to_cli_fd, buf, sizeof(buf), 0, (sockaddr*)&src_addr, &l);
		if(ret > 0)
		{
			//string data(buf, ret);
			ret = sendto(to_cli_fd, buf, ret, 0, (struct sockaddr *)&src_addr, l);
			if(ret == -1 && errno != EAGAIN)
			{
				fprintf(stderr, "sendto failed.\n"); 
				return -1;
			}
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


















