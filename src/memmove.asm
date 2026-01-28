; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

extern fm_memcpy
global fm_memmove
section .text

fm_memmove:
    mov rax, rdi
    cmp rdi, rsi
    jb .forward
    lea rsi, [rsi+rdx-1]
    lea rdi, [rdi+rdx-1]
.backward:
    test rdx, rdx
    jz .done
    mov bl, [rsi]
    mov [rdi], bl
    dec rsi
    dec rdi
    dec rdx
    jmp .backward
.forward:
    call fm_memcpy
.done:
    ret
