; Executable name : JUMPEXAMPLE
; Version         : 1.0
; Created date    : 10/15/2016
; Last Update     : 10/15/2016
; Author          : Apoorv Parmar
; Description     : ASM example to see how jump
;                   statements work in 
;
;   Build using these commands:
;       nasm -f elf64 -g -F stabs JumpExample.asm
;       ld -o JumpExample JumpExample.o
;

SECTION .data   ;Section containg initialized code.
    
    Snippet db "KANGAROO"
    Length equ 8
    
SECTION .bss    ;Section containg uninitialized code.

SECTION .text   ;Section containt text code.

    global _start
    
_start:
    nop
    mov eax,5           ; copy 5 to eax register
    
    DoMore: dec eax     ; decerement eax and  define this line with label "DoMore"
            jnz DoMore  ; goto label "DoMore" when zero flag is not set.
            
    mov ebx,Snippet     ; copy Snippet memory address to ebx
    mov eax,Length           ; copy 8 to eax
    
    LoopOver: add byte [ebx], 32    ; add 32 to ebx current pointing byte
              inc ebx               ; increment the value of ebx
              dec eax               ; decrement the value of eax
              jnz LoopOver          ; jump to "LoopOver" if zero flag is not set
              
    mov eax,8           ; copy 8 to eax
    mov ebx,0           ; copy 0 to ebx
    
    CheckNegative: dec ebx          ; decerement ebx
                   dec eax          ; decrement eax
                   jnz CheckNegative; jump to "CheckNegative" till eax is not zero
                   
    mov eax,42          ; copy 42 to eax
    neg eax             ; change the sign of eax
    add eax,42          ; add 42 to eax register
    
    nop
