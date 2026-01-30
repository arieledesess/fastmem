; Developer: Sreeraj
; GitHub: https://github.com/s-r-e-e-r-a-j

global fm_strrev
section .text
fm_strrev:
    test rdi, rdi
    jz .done
    mov r8, rdi
    mov rsi, rdi

.find_end:
    cmp byte [rsi], 0
    je .reverse
    inc rsi
    jmp .find_end

.reverse:
    dec rsi
.reverse_loop:
    cmp rdi, rsi
    jge .done_loop
    mov al, [rdi]
    mov bl, [rsi]
    mov [rdi], bl
    mov [rsi], al
    inc rdi
    dec rsi
    jmp .reverse_loop

.done_loop:
    mov rax, r8
    ret

.done:
    xor rax, rax
    ret

section .note.GNU-stack noalloc noexec nowrite
