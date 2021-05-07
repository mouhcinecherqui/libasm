global _ft_strcpy
section .text

_ft_strcpy:
    mov rax, rdi
    jmp count
count:
    cmp [rsi], byte 0
    jz it_copy 
    mov dl, [rsi]
    mov [rdi], dl
    inc rdi
    inc rsi 
    jmp count
it_copy:
    ret