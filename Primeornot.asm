BITS 32

extern printf
extern scanf

section .data
    fmt: db "%d",0
    prm: db "Prime",10,0
    com: db "Composite",10,0
    nei: db "Prime not applicable",10,0

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

    mov ecx, dword[ebp-0x4]
    dec ecx

    mov ebx, 2
    mov eax, dword[ebp-0x4]
    cmp eax, 1
    jle R
    cmp eax, 2
    jg M
	  je D    

    M:
    mov eax, dword[ebp-0x4]
    mov edx, 0
    div ebx
    cmp edx, 0
    je S
    cmp ebx, ecx
    je D
    inc ebx
    jmp M

    S:
    push com
    call printf
    leave
    ret

    D:
    push prm
    call printf
    leave
    ret

    R:
    push nei
    call printf
    leave
    ret
