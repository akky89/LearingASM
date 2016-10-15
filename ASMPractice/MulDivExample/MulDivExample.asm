; Executable name : MulDivExample
; Version         : 1.1
; Created date    : 10/15/2016
; Last Update     : 10/15/2016
; Author          : Apoorv Parmar
; Description     : A basic example to demostrate multiplication
;                   and divistion in ASM language
;
;   Build using these commands:
;       nasm -f elf64 -g -F stabs MulDivExample.asm
;       ld -o MulDivExample MulDivExample.o
;

SECTION .data   ;Section containg initialized code.

SECTION .bss    ;Section containg uninitialized code.

SECTION .text   ;Section containt text code.

    global _start
    
_start:
    nop
    mov eax, 447h               ; put 447h value in eax
    mov ebx, 1739h              ; put 1739h value in ebx
    mul ebx                     ; multiply eax with ebx
    
    ; checking the multiplication of very large number
    mov rax, 0FFFFFFFFFFFFFFFFh   ; put a very large number in eax
    mov rbx, 0FFFAAAAh          ; put some big value in ebx
    mul rbx                     ; multiply eax with ebx
    nop
