; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strcpy
section .text
fm_strcpy:
.loop:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    test al, al
    jnz .loop
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite
