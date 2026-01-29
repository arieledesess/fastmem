; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strncpy
section .text
fm_strncpy:
    test rdx, rdx
    jz .done
.loop:
    mov al, [rsi]
    mov [rdi], al
    inc rdi
    inc rsi
    dec rdx
    test al, al
    jz .pad
    jnz .loop
.pad:
    test rdx, rdx
    jz .done
    mov byte [rdi], 0
    inc rdi
    dec rdx
    jmp .pad
.done:
    ret

section .note.GNU-stack noalloc noexec nowrite
