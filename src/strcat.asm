; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strcat
section .text
fm_strcat:
    mov rax, rdi
.find_end:
    cmp byte [rdi], 0
    je .copy
    inc rdi
    jmp .find_end
.copy:
    mov dl, [rsi]
    mov [rdi], dl
    inc rdi
    inc rsi
    test dl, dl
    jnz .copy
    ret

section .note.GNU-stack noalloc noexec nowrite
