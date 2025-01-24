CC=gcc
CFLAGS=-Wall -g3

PROGRAMS=testArray

all: $(PROGRAMS)

test: all
	./testArray 1000000

testArray: testArray.o array.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) -f a.out *.o $(PROGRAMS)
