move: move.o
	ld -o move move.o

move.o: move.asm
	nasm -f elf64 -g -F stabs move.asm