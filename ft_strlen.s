global _ft_strlen
section .text

_ft_strlen:
    xor rcx, rcx 
    jmp count

count:
    cmp [rdi], byte 0
    jz ft_it_null

    inc rcx
    inc rdi
    jmp count

ft_it_null:
    mov rax, rcx
    ret