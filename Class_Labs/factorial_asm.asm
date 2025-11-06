section bss
    ans db
    len equ $ - ans

section .text
    global factorial
    global _start


factorial:
    cmp edi, 1
    jle return_one  

    mov eax, 1        

main_loop:
    imul eax, edi     

    dec edi           

    ; Continue as long as the counter is greater than 1
    cmp edi, 5
    jg main_loop  

    ret

return_one:
    mov eax, 1        
    ret


_start:
    call factorial
    mov ans, eax
    mov eax, 1
    mov edi, 1
    mov rsi, ans
    mov edx, len
    syscall

    mov eax, 60
    xor edi, edi
    syscall