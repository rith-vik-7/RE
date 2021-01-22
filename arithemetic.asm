BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0
	op1: db "sum is %d",10,0
	op2: db "difference is %d",10,0
	op3: db "product is %d",10,0
	op4: db "Division is %d",10,0
	op5: db "Remainder is %d",10,0

section .text
	global main

	main:
	push ebp
	mov ebp, esp
	sub esp, 0x10

	lea eax, [ebp-0x4]
	push eax
	push fmt
	call scanf

	lea edx, [ebp-0x8]
	push edx
	push fmt
	call scanf

	mov ebx, dword [ebp-0x4]
	mov eax, dword [ebp-0x8]
	add eax, ebx
	push eax
	push op1
	call printf

	mov ebx, dword [ebp-0x4]
	mov eax, dword [ebp-0x8]
	sub ebx, eax
	push ebx
	push op2
	call printf

	mov ebx, dword [ebp-0x4]
	mov eax, dword [ebp-0x8]
	imul eax, ebx
	push eax
	push op3
	call printf

	mov edx, 0
	mov eax, dword [ebp-0x4]
	mov ebx, dword [ebp-0x8]
	div ebx
	push eax
	push op4
	call printf

	mov edx, 0
	mov eax, dword [ebp-0x4]
	mov ebx, dword [ebp-0x8]
	div ebx
	push edx
	push op5
	call printf

	leave
	ret
