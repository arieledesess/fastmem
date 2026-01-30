; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strcmp_i
section .text
fm_strcmp_i:
.loop:
    mov al, [rdi]
    mov dl, [rsi]

    cmp al, 'A'
    jb .a_ok
    cmp al, 'Z'
    ja .a_ok
    add al, 32
.a_ok:
    cmp dl, 'A'
    jb .b_ok
    cmp dl, 'Z'
    ja .b_ok
    add dl, 32
.b_ok:
    cmp al, dl
    jne .diff
    test al, al
    jz .eq
    inc rdi
    inc rsi
    jmp .loop
.diff:
    movsx eax, al
    movsx edx, dl
    sub eax, edx
    ret
.eq:
    xor eax, eax
    ret

section .note.GNU-stack noalloc noexec nowrite
