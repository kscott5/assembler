%include 'system.inc'


%macro showmsg 2
    mov edx, %2 ;length of message
    mov ecx, %1 ;message text
    mov ebx, stdout
    sys.write
%endmacro

%macro getdata 2
    mov edx, %2 ;bytes read
    mov ebx, stdin
    mov ecx, %1
    sys.read
%endmacro

; initialization of read variables
; https://nasm.us/doc/nasmdoc7.html
; 7.5.1 win32 Extensions to the SECTION Directive
section .rdata
    gn_msg       db  'Enter your given name(s): '
    gn_msg_len   equ $-gn_msg

    sn_msg       db  'Enter your sirname: '
    sn_msg_len   equ $-sn_msg

; uninitialization of read/write variables
; https://nasm.us/doc/nasmdoc3.html
; 3.2.2 RESB and Friends: Declaring Uninitialized Data
section .bss
    sn_data       resb 100
    gn_data       resb 100

section .text
    global _start
    
_start:

showmsg sn_msg, sn_msg_len
getdata sn_data, 100

showmsg gn_msg, gn_msg_len
getdata gn_data, 100

sys.exit
