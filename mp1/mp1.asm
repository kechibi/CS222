section .text
    global _start

_start:

    ; Print 'R' character 
    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  'R'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 1      ; edx should contain how many characters to print
    int   80h         ; sys_write(1, "R", 1)

    mov eax, 4
    mov ebx, 1
    push 10;
    mov ecx, esp
    mov edx,1 
    int 80h

    ; Print 'U' character 
    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  'U'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 1      ; edx should contain how many characters to print
    int   80h         ; sys_write(1, "U", 1)

    mov eax, 4
    mov ebx, 1
    push 10;
    mov ecx, esp
    mov edx,1 
    int 80h

    ; Print 'I' character 
    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  'I'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 1      ; edx should contain how many characters to print
    int   80h         ; sys_write(1, "I", 1)

    mov eax, 4
    mov ebx, 1
    push 10;
    mov ecx, esp
    mov edx,1 
    int 80h

    ; Print 'Z' character 
    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  'Z'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 1      ; edx should contain how many characters to print
    int   80h         ; sys_write(1, "Z", 1)

    mov eax, 4
    mov ebx, 1
    push 10;
    mov ecx, esp
    mov edx,1 
    int 80h

  
    ; return value in EAX = 1 (byte written), or error (-errno)

    add   esp, 4      ; restore esp if necessary

    ; System exit
    mov eax,1            
    mov ebx,0            
    int 80h

;sudo apt-get update
;sudo apt-get -y install nasm
;nasm -f elf mp1.asm
;ld -m  elf_i386 mp1.o -o mp1
;./mp1
