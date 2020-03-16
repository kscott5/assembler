%define	stdin	0
%define	stdout	1
%define	stderr	2

%define SYS_nosys   0
%define SYS_exit    1
%define SYS_fork    2
%define SYS_read    3
%define SYS_write   4

; generic non-global proceudre use for all system kernel calls. 
section	.text
align 4
access.the.bsd.kernel:
	int	80h
	ret

%macro	system	1
	mov	eax, %1
	call access.the.bsd.kernel
%endmacro

; generic syscall with single argument
; parameter syscall number
%macro sys.none     0
    system SYS_nosys
%endmacro

%macro	sys.exit	0
	system SYS_exit
%endmacro

%macro	sys.fork	0
	system SYS_fork
%endmacro

%macro	sys.read	0
	system SYS_read
%endmacro

%macro	sys.write	0
	system SYS_write
%endmacro

%macro sys.prompt 2
    mov edx, %2 ;length of message
    mov ecx, %1 ;message text
    mov ebx, stdout
    sys.write
%endmacro

%macro sys.getinput 2
    mov edx, %2 ;bytes read
    mov ecx, %1 ;variable
    mov ebx, stdin
    sys.read
%endmacro
