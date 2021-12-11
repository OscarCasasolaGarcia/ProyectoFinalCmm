# @author Adrian Ulises Mercado Martínez
# @version 1, 3/11/2021
CXX  = g++
EXE = compiler

CXXDEBUG = -g -Wall
CXXSTD = -std=c++14
CXXFLAGS = -Wno-deprecated-register -O0  $(CXXDEBUG) $(CXXSTD)

CPPOBJ = main
SOBJ = lexer

FILES = $(addsuffix .cpp, $(CPPOBJ))
OBJS  = $(addsuffix .o, $(CPPOBJ))

CLEANLIST = $(OBJS) $(EXE) Lexer.cpp lexer.o

.PHONY: all clean

all: wc

wc: $(FILES)
	$(MAKE) $(SOBJ)
	$(MAKE) $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(EXE) $(OBJS) lexer.o

lexer: lexer.ll
	flex $<
	$(CXX)  $(CXXFLAGS) -c Lexer.cpp -o lexer.o

clean:
	rm -rf $(CLEANLIST)