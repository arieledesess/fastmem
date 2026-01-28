; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memset
section .text
fm_memset:
    mov rax, rdi
    mov al, sil
.loop:
    test rdx, rdx
    jz .done
    mov [rdi], al
    inc rdi
    dec rdx
    jmp .loop
.done:
    ret
