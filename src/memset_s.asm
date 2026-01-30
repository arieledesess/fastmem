; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memset_s
section .text
fm_memset_s:
    mov rax, rdi
.loop:
    test rdx, rdx
    jz .done
    mov byte [rdi], sil
    inc rdi
    dec rdx
    jmp .loop
.done:
    ret

section .note.GNU-stack noalloc noexec nowrite
