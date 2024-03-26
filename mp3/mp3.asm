section .data
    newline db 10

section .bss
    buffer resb 1
    

section .text
    global _start

_start:
    
    mov eax, 3           
    mov ebx, 0           
    mov ecx, buffer      
    mov edx, 1          
    int 0x80             

    
    cmp byte [buffer], 'a'
    jl not_lowercase
    cmp byte [buffer], 'z'
    jg not_lowercase

    
    sub byte [buffer], 32     ; Convert the character to uppercase

not_lowercase:
    
    mov eax, 4           
    mov ebx, 1          
    mov ecx, buffer      
    mov edx, 1           
    int 0x80  

    mov eax, 4           
    mov ebx, 1          
    mov ecx, newline     
    mov edx, 1           
    int 0x80                   

    ; Exit the program
    mov eax, 1           
    xor ebx, ebx         ; exit code 0
    int 0x80
