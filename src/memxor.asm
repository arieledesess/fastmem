; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memxor
section .text
fm_memxor:
.loop:
    test rdx, rdx
    jz .done
    mov al, [rsi]
    xor [rdi], al
    inc rdi
    inc rsi
    dec rdx
    jmp .loop
.done:
    ret

section .note.GNU-stack noalloc noexec nowrite
