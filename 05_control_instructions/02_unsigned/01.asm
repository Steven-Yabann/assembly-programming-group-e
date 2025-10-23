; JA / JNBE → Jump if Above
section .data
    str_above db "Steven Yabann 167027",10,0
    str_not_above db "Yabann Steven 167027",10,0
    msglen equ $ - str_not_above

section .text
    global _start
_start:
    mov ax, 7
    mov bx, 3
    cmp ax, bx
    ja above

    mov ecx, str_not_above
    jmp print

above:
    mov ecx, str_above

print:
    mov eax,4  ; display
    mov ebx,1  ; how to display stdout
    mov edx,30 ; len of what to display
    int 0x80   ; call

    mov eax,1
    xor ebx,ebx
    int 0x80
