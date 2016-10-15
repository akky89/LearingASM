JumpExample: JumpExample.o
	ld -o JumpExample JumpExample.o

JumpExample.o: JumpExample.asm
	nasm -f elf64 -g -F stabs JumpExample.asm