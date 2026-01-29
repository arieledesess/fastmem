; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_mempcpy
section .text
fm_mempcpy:
    test rdx, rdx
    jz .done
.loop:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    dec rdx
    jnz .loop
.done:
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite
