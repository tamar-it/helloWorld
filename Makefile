all: helloC helloCPP mutex threads threads-c11 barrier
helloC: helloWorld.c
	gcc-11 -o helloWorld-c helloWorld.c
helloCPP: helloWorld.cpp
	g++-11 -o helloWorld-cpp helloWorld.cpp
mutex: mutex-test.cpp
	gcc-11 -o mutex-test mutex-test.cpp -std=c++11 -lpthread
threads: threads.c
	gcc-11 -o threads threads.c -lpthread
threads-c11: threads-c11.cpp
	g++-11 threads-c11.cpp -o threads-c11 -std=c++11 -lpthread
barrier: barrier.cpp
	g++-11 barrier.cpp -o barrier -Wall -std=c++20 -lpthread
clean:
	rm -f mutex-test helloWorld-c helloWorld-cpp threads threads-c11 barrier
check:
	./helloWorld-c
	./helloWorld-cpp
	./mutex-test
	./threads
	./threads-c11
	./barrier
discheck: clean
