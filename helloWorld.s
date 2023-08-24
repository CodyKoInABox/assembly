section .bss

section .data
    hello: db "Hello, World!", 10
    helloLen: equ $-hello

section .text
    global_start

    _start:
            mov  rax, 1
            mov  rdi, 1
            mov  rsi, hello
            mov  rdx, helloLen
            syscall
            
            mov  rax, 60
            mov  rdi, 0
            syscall