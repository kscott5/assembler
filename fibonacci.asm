%include './includes/system.inc'

section .data
    title db 'Fibonacci sequence', 0AH ; 0ah or 0xa newline
    title_len equ $-title

    seqi_input db 'Enter sequence integer: ', 0 ; 0 nil terminator
    seqi_input_len equ $-seqi_input

    frmt_input db 'You entered a sequence interger of ', 0

section .bss
    seqi resd 1

section .text
    global _start

_start:

    sys.prompt title, title_len

    sys.prompt seqi_input, seqi_input_len
    sys.getinput seqi, 100

    sys.prompt frmt_input, 35

; 0+1=1 -> a+b=c
; 1+1=2 -> a=b b=c a+b=c
; 1+2=3 -> 
; 2+3=5 ->

    ; https://software.intel.com/en-us/articles/introduction-to-x64-assembly
    ; xor eax,eax ; RAX: AH high 16 bites. AX low 16 bits. 
    ; xor ebx,ebx
    ; xor ecx,ecx


    ; mov eax, 0
    ; mov ebx, 1

    ; .loop:

        ; add eax, ebx
        ; add ecx, ebx

        

        ; mov ebx, eax
        ; mov ecx, ebx

    ; je .loop

    sys.none
    sys.exit