; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memrchr
section .text
fm_memrchr:
    test rdx, rdx
    jz .notfound
    lea rdi, [rdi+rdx-1]
.loop:
    cmp byte [rdi], sil
    je .found
    dec rdi
    dec rdx
    jnz .loop
.notfound:
    xor rax, rax
    ret
.found:
    mov rax, rdi
    ret
