%include    'system.inc'

section .data
hello       db  'Hey do not forget Dr. Bailey mainframe assembly course.', 0Ah
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