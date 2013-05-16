JUNKDIR=/afs/phas.gla.ac.uk/user/p/pmullen/Service-work/Service-task/D3PD-hfor/config_test
CC=g++
CFLAGS= -c -Wall 
ROOTCFLAGS=$(shell root-config --cflags)
ROOTLIBS=$(shell root-config --libs)

all: test

$(JUNKDIR)/main.o: main.cc 
	$(CC) $(CFLAGS) $(ROOTCFLAGS) -o $@ $< 

test: $(JUNKDIR)/main.o   
	$(CC) $(ROOTCFLAGS) $(ROOTLIBS) -o $@ $^ 
clean:
	rm -f *.o test 
