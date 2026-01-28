; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strchr
section .text
fm_strchr:
.loop:
    mov al, [rdi]
    cmp al, sil
    je .found
    test al, al
    je .notfound
    inc rdi
    jmp .loop
.found:
    mov rax, rdi
    ret
.notfound:
    xor rax, rax
    ret
