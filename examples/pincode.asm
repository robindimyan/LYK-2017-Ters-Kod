section .text
global _start

_start:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, Emsg
	mov edx, 15
	int 0x80

	mov eax, 0x3
	mov ebx, 0x0
	mov ecx, inp
	mov edx, 4
	int 0x80

	mov ecx, 0
L1:
	mov eax, inp
	add eax, ecx
	mov eax, [eax]

	mov ebx, pin
	add ebx, ecx
	mov ebx, [ebx]

	cmp eax, ebx
	jne Fail

	inc ecx
	cmp ecx, 4
	je Success

Success:
	mov eax, 4
	mov ebx, 1
	mov ecx, Smsg
	mov edx, 8
	int 0x80

	jmp Exit

Fail:
	mov eax, 4
	mov ebx, 1
	mov ecx, Fmsg
	mov edx, 5
	int 0x80

Exit:
	mov eax, 1
	mov ebx, 0
	int 0x80


section .bss
	inp resb 4

section .data
	pin	db '1234'
	Smsg	db 'Success',0xa
	Fmsg	db 'Fail',0xa
	Emsg	db 'Enter pincode: '
