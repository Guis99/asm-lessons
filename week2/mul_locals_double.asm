global mulLocals_double

section .text
mulLocals_double:
    push   rbp
    mov    rbp, rsp
    push   rbx          ; save callee-saved reg

    sub    rsp, 16      ; reserve 16 bytes
    mov    dword [rbp-8], rdi
    mov    dword [rbp-16], rsi

    mov    rax, [rbp-16]
    imul   rax, [rbp-8]

    add    rsp, 16      ; clean up local space
    pop    rbx          ; restore rbx
    pop    rbp
    ret
