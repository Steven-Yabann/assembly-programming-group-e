section .text
    global sum

sum:
    mov rax, 0
    mov rcx, rdi


print_loop:
    cmp rcx, rsi
    JGE end

    add rax, rcx
    inc rcx

    JMP print_loop

end:
    ret

      ; Return the sum (e.g., 7) in RAX