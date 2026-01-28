; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memchr
section .text
fm_memchr:
.loop:
    test rdx, rdx
    jz .notfound
    cmp byte [rdi], sil
    je .found
    inc rdi
    dec rdx
    jmp .loop
.found:
    mov rax, rdi
    ret
.notfound:
    xor rax, rax
    ret
