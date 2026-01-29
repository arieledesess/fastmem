; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_memccpy
section .text

fm_memccpy:
    test rcx, rcx
    jz .null

.loop:
    mov al, [rsi]
    mov [rdi], al

    inc rsi
    inc rdi

    cmp al, dl
    je .found

    dec rcx
    jnz .loop

.null:
    xor rax, rax
    ret

.found:
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite
