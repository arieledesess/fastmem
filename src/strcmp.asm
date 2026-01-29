; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strcmp
section .text
fm_strcmp:
.loop:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, bl
    jne .diff
    test al, al
    je .eq
    inc rdi
    inc rsi
    jmp .loop
.eq:
    xor eax, eax
    ret
.diff:
    movzx eax, al
    movzx ebx, bl
    sub eax, ebx
    ret

section .note.GNU-stack noalloc noexec nowrite
