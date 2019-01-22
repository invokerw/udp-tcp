CXX=g++ -m64
CXXFLAGS=-g -Wall -std=c++0x
INCLUDES= -I. -I../
LD=g++ -m64
LDFLAGS=-std=c++0x
DASM=objdump
DASMFLAGS=-dS
OBJS=
LIBS=-lpthread

all: udp_client

udp_client: main.o ${OBJS}
	${LD} ${LDFLAGS} -o $@ $< ${OBJS} ${LIBS}
	${DASM} ${DASMFLAGS} $@ >udp_client.s

main.o: main.cpp
	${CXX} ${CXXFLAGS} ${INCLUDES} -c $<

clean:
	rm -f *.o udp_client udp_client.s
