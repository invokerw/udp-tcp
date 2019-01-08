#!/usr/bin/python


import random
from socket import *

HOST = ''
PORT = 12001
BUFSIZE = 1024
ADDR = (HOST, PORT)

udpSerSock = socket(AF_INET, SOCK_DGRAM)
udpSerSock.bind(ADDR)

while True:
	print('wating for connection...')
	data, addr = udpSerSock.recvfrom(BUFSIZE)
	print(addr)
	data = data.upper()
	udpSerSock.sendto(data, addr)

udpSerSock.close()
