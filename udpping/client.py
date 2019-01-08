#!/usr/bin/python

from socket import *
import time
import random
import string

HOST = '127.0.0.1'
PORT = 12001
BUFSIZE = 1024
ADDR = (HOST, PORT)
TIMEOUT = 1

# TODO:
rtt_min = 0.0
rtt_max = 0.0
rtt_avg = 0.0
rtt_mdev = 0.0

# --- 127.0.0.1 ping statistics ---
# 7 packets transmitted, 7 received, 0% packet loss, time 6001ms
# rtt min/avg/max/mdev = 0.019/0.030/0.043/0.010 ms

udpCliSock = socket(AF_INET, SOCK_DGRAM)
udpCliSock.settimeout(TIMEOUT)


for i in range(0, 100):
	#data = input('> ')
	data = ran_str = ''.join(random.sample(string.ascii_letters + string.digits, 62)) 
	#"ping " + str(i)
	if not data:
		break

	try:
		begin_time_ms = int(time.time() * 1000)
		udpCliSock.sendto(data.encode(), ADDR)
		data, ADDR = udpCliSock.recvfrom(BUFSIZE)
		end_time_ms = int(time.time() * 1000)
		#if data:
		#	print('Response: ', data)
		delay_time_ms = end_time_ms - begin_time_ms
		print(str(len(data)) + " bytes from " + HOST + ": i=" + str(i) +", time=" + str(delay_time_ms) + " ms")
	except Exception as e:
		print(e)
		#print('Request timed out')
	time.sleep(1)

udpCliSock.close()
