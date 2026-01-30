; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strcount
section .text
fm_strcount:
    xor eax, eax
.loop:
    mov cl, [rdi]
    test cl, cl
    jz .done
    cmp cl, sil
    jne .next
    inc rax
.next:
    inc rdi
    jmp .loop
.done:
    ret

section .note.GNU-stack noalloc noexec nowrite
