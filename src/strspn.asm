; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strspn
section .text
fm_strspn:
    push rbx
    xor rax, rax

.outer:
    mov dl, [rdi]
    test dl, dl
    jz .done

    mov rcx, rsi

.inner:
    mov bl, [rcx]
    test bl, bl
    jz .done
    cmp dl, bl
    je .match
    inc rcx
    jmp .inner

.match:
    inc rax
    inc rdi
    jmp .outer

.done:
    pop rbx
    ret

section .note.GNU-stack noalloc noexec nowrite
