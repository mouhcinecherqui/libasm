global _ft_strcmp
section .text

_ft_strcmp:
    cmp [rsi], byte 0
    jz is_equal
    cmp [rdi], byte 0
    jz is_less
    mov  dl, [rdi]
    cmp [rsi], dl
    jl is_greater
    jg is_less
    inc rdi
    inc rsi
    jmp _ft_strcmp

is_equal:
    cmp [rdi], byte 0
    jz compare
    jg is_greater
    jmp is_less

is_greater:
    mov rax, 1
    ret
is_less:
    mov rax, -1
    ret
compare:
    mov rax, 0
    ret