global main
section .text
main:
    xor    eax, eax     ; sum = 0
    mov     ecx, 1       ; i = 1

.loop45:
    add     eax, ecx     ; sum += i
    inc     ecx          ; i++
    cmp     ecx, 6       ; have we reached 6?
    jl      .loop45        ; if i < 6, keep looping
    ret                  ; return sum in eax
