; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strlen
section .text
fm_strlen:
    xor rcx, rcx
.loop:
    cmp byte [rdi+rcx], 0
    je .done
    inc rcx
    jmp .loop
.done:
    mov rax, rcx
    ret
