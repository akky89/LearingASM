; Executable name : MOVE
; Version         : 1.0
; Created date    : 10/15/2016
; Last Update     : 10/15/2016
; Author          : Apoorv Parmar
; Description     : Example code that is ment to 
;                   test the different examples of MOVE
;                   statement.
;
;   Build using these commands:
;       nasm -f elf64 -g -F stabs move.asm
;       ld -o move move.o
;

SECTION .data   ;Section containg initialized code.
Msg: db 'this is my first asm code, I wrote by myself'
Value: equ 1000

SECTION .bss    ;Section containg uninitialized code.

SECTION .text   ;Section containt text code.

    global _start
    
_start:
    nop
    mov eax,42h         ; copy 42h data to EAX register.
    mov edx,64h         ; copy 64h data to EDX register.
    mov ebx,edx         ; copy data in EDX to EBX
    mov cx,bx           ; copy lower half of EBX to CX
    mov rbx,Msg         ; copy address of MSG to rbx
    mov rax,Value       ; coy value to rax
    inc rax             ; decrement the value of rax by one
    dec rax             ; increament the value of rax by one
    
    mov eax,100h        ; copy 100h to eax
    mov ebx,1000h       ; copy 1000h into ebx
    mov eax, [ebx]      ; copy data at address stored in ebx to eax
    mov eax, [ebx + 10h]; copy data at address stored in ebx to eax and add 10h to it.
    mov ecx, 100h       ; copy 100h to ecx
    mov ebx, 100h       ; copy 100h to ebx
    mov eax, [ebx + ecx]; copy sum of ebx and ecx to eax
    mov eax, [ebx + ecx +10h]; copy sum of ebx, ecx and add 10h then copy it to eax
    
    mov eax,0           ; copy 0 to eax (instruction to terminate)
    mov ebx,1           ; copy 1 to ebx
    xchg eax,ebx        ; exchange the value of eax and ebx
    int 80h             ; make system call (software interrupt)
    nop
