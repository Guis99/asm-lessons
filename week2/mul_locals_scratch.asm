global mulLocals
global mulLocals_double

section .text
mulLocals:
    push rbp 
    mov rbp, rsp ; save current stack pointer to rbp
    push rbx ; save callee-saved reg

    sub rsp, 16 ; reserve 16 bytes

    mov dword [rbp-4], edi ;save arg1 to stack
    mov dword [rbp-8], esi ; save arg2 to next stack spot 

    mov	eax, [rbp-8] ; bring back stack var to eax (ret val)
    imul eax, [rbp-4] ; mul retval by next stack item in-place

    add rsp, 16 ; clean up local space

    pop rbx  ; restore rbx
    pop rbp
    ret

mulLocals_double:
    push   rbp
    mov    rbp, rsp
    push   rbx          ; save callee-saved reg

    sub    rsp, 16      ; reserve 16 bytes
    movsd    qword [rbp-8], xmm0
    movsd    qword [rbp-16], xmm1

    movsd    xmm0, [rbp-16]
    mulsd   xmm0, [rbp-8]

    add    rsp, 16      ; clean up local space
    pop    rbx          ; restore rbx
    pop    rbp
    ret
