#!/usr/bin/python


import random
from socket import *

HOST = ''
PORT = 11193
BUFSIZE = 1024
ADDR = (HOST, PORT)

udpSerSock = socket(AF_INET, SOCK_DGRAM)
udpSerSock.bind(ADDR)

print('wating for connection...')

while True:
	data, addr = udpSerSock.recvfrom(BUFSIZE)
	print(str(addr)+" : "+data)
	data = data.upper()
	udpSerSock.sendto(data, addr)

udpSerSock.close()
