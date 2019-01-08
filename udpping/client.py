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
		print(str(len(data)) + " bytes from " + HOST + ": time=" + str(delay_time_ms) + " ms")
	except Exception as e:
		print(e)
		#print('Request timed out')
	time.sleep(1)

udpCliSock.close()
