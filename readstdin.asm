%include 'system.inc'

%macro prompt 2
    mov edx, %2 ;length of prompt text
    mov ecx, %1 ;prompt text
    mov ebx, stdout
    sys.write
%endmacro

%macro prompt_input 0
    sys.read
    or eax, eax
    je .exit

    prompt eax, $-eax
    exit:
        ret
%endmacro

section .data
    prompt_gn       db 'Enter your given name(s): ', 0Ah
    prompt_gn_len   equ $-prompt_gn

    prompt_sn       db 'Enter your sirname: ', 0Ah
    prompt_sn_len   equ $-prompt_sn

section .text
    global _start
    
_start:

prompt prompt_sn, prompt_sn_len
sys.read
prompt prompt_gn, prompt_gn_len

sys.exit
