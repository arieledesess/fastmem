; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_stpcpy
section .text
fm_stpcpy:
.loop:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    test al, al
    jnz .loop
    lea rax, [rdi-1]
    ret

section .note.GNU-stack noalloc noexec nowrite
