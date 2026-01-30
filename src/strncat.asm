; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strncat
section .text
fm_strncat:
    mov rax, rdi
.find_end:
    cmp byte [rdi], 0
    je .copy
    inc rdi
    jmp .find_end
.copy:
    test rdx, rdx
    jz .done
    mov cl, [rsi]
    test cl, cl
    jz .done
    mov [rdi], cl
    inc rdi
    inc rsi
    dec rdx
    jmp .copy
.done:
    mov byte [rdi], 0
    ret

section .note.GNU-stack noalloc noexec nowrite
