; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strnlen
section .text
fm_strnlen:
    xor rcx, rcx
.loop:
    test rsi, rsi
    jz .done
    cmp byte [rdi], 0
    je .done
    inc rdi
    inc rcx
    dec rsi
    jmp .loop
.done:
    mov rax, rcx
    ret

section .note.GNU-stack noalloc noexec nowrite
