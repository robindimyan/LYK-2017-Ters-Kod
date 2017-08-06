section .text
global _start

_start:
	push 0x0a37314b
	push 0x594c206f
	push 0x6c6c6548
	mov edx, 12
	lea ecx, [esp]
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov eax, 1
	int 0x80
