
section .data
    message db "Hello, World!", 10
    length equ $ - message

section .text
    global _start

_start:
    ; Print message
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, message    ; message address
    mov rdx, length     ; message length
    syscall

    ; Exit program
    mov rax, 60         ; sys_exit
    mov rdi, 0          ; exit code 0
    syscall