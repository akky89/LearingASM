; Executable name : SANDBOX
; Version         : 1.1
; Created date    : 10/15/2016
; Last Update     : 10/15/2016
; Author          : Apoorv Parmar
; Description     : A base code for all the ASM code.
;
;   Build using these commands:
;       nasm -f elf64 -g -F stabs sandbox.asm
;       ld -o sandbox sandbox.o
;

SECTION .data   ;Section containg initialized code.

SECTION .bss    ;Section containg uninitialized code.

SECTION .text   ;Section containt text code.

    global _start
    
_start:
    nop
    ; Put your experiments between the two nops....

    ; Put your experiments between the two nops....
    nop
