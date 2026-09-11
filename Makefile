CC=gcc

CFLAGS=-Wall

all: prog

prog: main.c isEven.c isOdd.c
	$(CC) $(CFLAGS) main.c isEven.c isOdd.c -o prog

clean:
	rm -rf *.o
