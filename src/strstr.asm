; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strstr
section .text
fm_strstr:
    mov rax, rdi
    cmp byte [rsi], 0
    je .found
.outer:
    mov r8, rdi
    mov r9, rsi
.inner:
    mov al, [r8]
    mov dl, [r9]
    test dl, dl
    jz .found
    test al, al
    jz .not_found
    cmp al, dl
    jne .next
    inc r8
    inc r9
    jmp .inner
.next:
    inc rdi
    jmp .outer
.found:
    mov rax, rdi
    ret
.not_found:
    xor eax, eax
    ret

section .note.GNU-stack noalloc noexec nowrite
