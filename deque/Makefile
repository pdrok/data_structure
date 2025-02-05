CC=gcc
CFLAGS=-Wall -O3 -g3

# how many iterations for test
ITERATIONS=10000000
VALGRID_ITERATIONS=100

all: testDeque testRingBuffer

test: all
	./testDeque $(ITERATIONS)
	valgrind -q --leak-check=yes ./testDeque $(VALGRID_ITERATIONS)
	./testRingBuffer $(ITERATIONS)
	valgrind -q --leak-check-yes ./testRingBuffer $(VALGRIND_ITERATIONS)

time: all
	time ./testDeque $(ITERATIONS)
	time ./testRingBuffer $(ITERATIONS)

testDeque:  testDeque.o deque.o
	$(CC) $(CFLAGS) -o $@ $^

testRingBuffer: tesDeque.o ringBuffer.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) testDeque testRingBuffer.o
