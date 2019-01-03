CXX=g++ -m64
CXXFLAGS=-pg -Wall -std=c++0x
INCLUDES=
LD=g++ -m64
LDFLAGS=-std=c++0x -pg
DASM=objdump
DASMFLAGS=-dS
OBJS=
LIBS=-lpthread

all: tcp_233

tcp_233: main.o ${OBJS}
	${LD} ${LDFLAGS} -o $@ $< ${OBJS} ${LIBS}
	${DASM} ${DASMFLAGS} $@ >tcp_233.s

main.o: main.cpp
	${CXX} ${CXXFLAGS} ${INCLUDES} -c $<

clean:
	rm -f *.o tcp_233 tcp_233.s
