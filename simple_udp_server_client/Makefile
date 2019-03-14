CXX=g++ -m64
CXXFLAGS=-g -Wall -std=c++0x
INCLUDES=
LD=g++ -m64
LDFLAGS=-std=c++0x
DASM=objdump
DASMFLAGS=-dS
OBJS=main_server.o #ikcp.o
LIBS=-lstdc++

EXES=udp_server


OBJS1=main_client.o 
EXES1 = udp_client

all: ${EXES} ${EXES1}

$(EXES): ${OBJS}
	${LD} ${LDFLAGS} -o $@  ${OBJS} ${LIBS}
	${DASM} ${DASMFLAGS} $@ >${EXES}.s

$(EXES1): ${OBJS1}
	${LD} ${LDFLAGS} -o $@  ${OBJS1} ${LIBS}
	${DASM} ${DASMFLAGS} $@ >${EXES1}.s

clean:
	rm -f *.o $(OBJS) $(EXES) $(EXES).s
	rm -f *.o $(OBJS1) $(EXES1) $(EXES1).s
