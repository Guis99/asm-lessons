main:
        push    rbp
        mov     rbp, rsp
        lea     rdi, [rip + .L.str]
        mov     al, 0
        call    printf@PLT
        xor     eax, eax
        pop     rbp
        ret

.L.str:
        .asciz  "hello world\n"
