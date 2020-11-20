CXX=g++
CXXFLAGS=-g -Wall -ansi
INCLUDES=
LD=g++
LDFLAGS=
OBJS=
LIBS=

all: test

test: main.o ${OBJS}
	${LD} ${LDFLAGS} -o test main.o ${OBJS} ${LIBS}

main.o: main.cpp
	${CXX} ${CXXFLAGS} ${INCLUDES} -c main.cpp

clean:
	rm -f *.o test
