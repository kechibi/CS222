section .data
    newline db 10

section .text
    global _start

    print_char:
        mov eax, 4
        mov ebx, 1
        mov ecx, esp
        mov edx, 1
        int 0x80
        ret

    _start:
        cmp al, 'A'
        jl not_uppercase
        cmp al, 'Z'
        jg not_uppercase
        add al, 32

    not_uppercase:
        push eax
        call print_char
        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg1
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg2
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg3
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg4
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, newline
        mov edx, 1
        int 0x80

        mov eax, 1
        xor ebx, ebx
        int 0x80

    section .data
        msg1 db 'a'
        msg2 db 'A'
        msg3 db 'z'
        msg4 db 'Z'
