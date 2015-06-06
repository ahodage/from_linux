#We cab declare variables to further reduce our effort
CC = g++
CFLAGS = -c -Wall
#"-c" is the compile command "-Wall" is for warnings  

all: hello

hello: main.o function1.o function2.o
	$(CC) main.o function1.o function2.o -o hello

#files after the target(i.e. after ":") indicate the target dependencies. i.e. the target wont execute if the dependency is not satisifed/the dependency is not present.
main.o:	main.cpp
	$(CC) $(CFLAGS) main.cpp

function1.o: function1.cpp
	$(CC) $(CFLAGS) function1.cpp

function2.o: function2.cpp
	$(CC) $(CFLAGS) function2.cpp

run:
	./hello
clean:
	rm -rf *o hello
