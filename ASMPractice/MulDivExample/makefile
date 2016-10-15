MulDivExample: MulDivExample.o
	ld -o MulDivExample MulDivExample.o

MulDivExample.o: MulDivExample.asm
	nasm -f elf64 -g -F stabs MulDivExample.asm