CC = g++ -v -g -O3 -fbounds-check
CCFLAGS =-Wall -Wextra -Wconversion -c
LD = g++ 
LDFLAGS =   
LIBS = 

BIN=$(HOME)/bin
SRC=./src
LIB=./lib
OBJ=./obj

all:  $(BIN)/exec

clean : 
	rm *.o
	rm -rf $(BIN)/exec

main.o:  main.cpp

$(BIN)/exec: main.o
	$(LD) $(LDFLAGS)  $^  $(LIBS) -o $@
	@echo "$@ done"
.cpp.o:
	$(CC) $(CCFLAGS) -c $<