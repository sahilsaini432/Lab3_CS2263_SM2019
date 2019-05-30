#########################################
# Created by Sahil Saini , Syed Mehdi
##########################################

# compile with gcc, change this to clang if you prefer
COMPILER = gcc

# The C flags to pass to gcc
C_FLAGS = -Wall -Wextra

# halp command for the Makefile
help:
	@printf "available command:\n"
	@printf " make help						(this command)\n"
	@printf " make Stack						(to build your C program)\n"
	@printf " make test						(to run every test case)\n"
	@printf " make test1						(to run test case 1)\n"
	@printf " make test2						(to run test case 2)\n"
	@printf " make test3						(to run test case 3)\n"

#link our .o files to make an executable
Stack: Stack.o
	$(COMPILER) $(C_FLAGS) -o Stack Stack.o

# compile the `Stack.o` file
Stack.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c

##################################################################
# Test Cases
test: test1 test2 test3

test1: Stack
	./Stack < Data/test1.input

test2: Stack
	./Stack < Data/test2.input

test3: Stack
	./Stack < Data/test3.input
