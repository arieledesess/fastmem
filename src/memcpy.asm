; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memcpy
section .text
fm_memcpy:
    mov rax, rdi
    test rdx, rdx
    jz .done
.loop:
    mov bl, [rsi]
    mov [rdi], bl
    inc rsi
    inc rdi
    dec rdx
    jnz .loop
.done:
    ret
