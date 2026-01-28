; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_bzero
section .text
fm_bzero:
    xor eax, eax
.loop:
    test rsi, rsi
    jz .done
    mov [rdi], al
    inc rdi
    dec rsi
    jmp .loop
.done:
    ret
