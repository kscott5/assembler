%include    'system.inc'

section .data
%ifdef LINUX
    hello   db  'Hey do not forget Dr. Bailey mainframe assembly course.', 0Ah
%else
    hello   db 'Hey. How are you today', 0xa
%endif

hellolen    equ $-hello

section .text
global  _start
_start:
mov   edx, hellolen
mov   ecx, hello
mov   ebx, stdout
sys.write

sys.none
sys.exit