CC=gcc

CFLAGS=-Wall

all: prog.o

prog.o: main.o isEven.o isOdd.o
	$(CC) $(CFLAGS) main.o isEven.o isOdd.o -o prog.o

main.o: main.c
	$(CC) $(CFLAGS) main.c -c 

isEven.o: isEven.c
	$(CC) $(CFLAGS) isEven.c -c 

isOdd.o: isOdd.c
	$(CC) $(CFLAGS) isOdd.c -c 


clean:
	rm -rf *.o
