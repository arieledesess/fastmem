; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strrchr
section .text
fm_strrchr:
    xor rax, rax
.loop:
    mov bl, [rdi]
    cmp bl, sil
    cmove rax, rdi
    test bl, bl
    je .done
    inc rdi
    jmp .loop
.done:
    ret
