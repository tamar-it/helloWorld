all: helloC helloCPP mutex threads threads-c11 barrier
helloC: helloWorld.c
	gcc -o helloWorld-c helloWorld.c
helloCPP: helloWorld.cpp
	g++ -o helloWorld-cpp helloWorld.cpp
mutex: mutex-test.cpp
	gcc -o mutex-test mutex-test.cpp -std=c++11 -lpthread
threads: threads.c
	gcc -o threads threads.c -lpthread
threads-c11: threads-c11.cpp
	g++ threads-c11.cpp -o threads-c11 -std=c++11 -lpthread
barrier: barrier.cpp
	g++ barrier.cpp -o barrier -Wall -std=c++20 -lpthread
clean:
	rm -f mutex-test helloWorld-c helloWorld-cpp threads threads-c11 barrier
