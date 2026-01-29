; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strcspn
section .text
fm_strcspn:
    xor rax, rax

.outer:
    mov dl, [rdi]
    test dl, dl
    jz .done

    mov rcx, rsi

.inner:
    mov bl, [rcx]
    test bl, bl
    jz .cont
    cmp dl, bl
    je .done
    inc rcx
    jmp .inner

.cont:
    inc rdi
    inc rax
    jmp .outer

.done:
    ret

section .note.GNU-stack noalloc noexec nowrite
