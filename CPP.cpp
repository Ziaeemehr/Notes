Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-12-24T09:28:46+03:30

====== CPP ======
Created پنجشنبه 24 دسامبر 2015

g++ p5.cpp -std=c++11

== debugging, debug ==
g++  -g filename.cpp
gdb a.out
(gdb) run


=== gprof (profiling) ===

add "**-pg**" to compile command
run with **./prog**
**gprof prog | less**


==== openmp ====
export  OMP_NUM_THREADS=1



== igraph C installation ==
: /usr/bin/ld: cannot find -lxml2 [[/usr/bin/ld]]
install  **libxml2-dev** and/or **libz-dev** from synaptic


== How to count all the lines of code in a directory recursively? ==

find . -name '*.php' | xargs wc -l


=== compiling ===
frac: main.o frac.o
	g++ -o frac main.o frac.o

main.o: main.cpp frac.h
	g++ -c main.cpp

frac.o: frac.cpp frac.h
	g++ -c frac.cpp

clean:
	rm *.o frac
	


=== openmp environment variable ===
export OMP_NUM_THREADS=2


