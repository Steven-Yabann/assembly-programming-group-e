; JS → Jump if Sign
section .data
    msg_neg db "Number is Negative -> Yabann Steven 167027",10,0
    msg_pos db "Number is Positive -> Yabann Steven 167027",10,0

    msg_len equ $ - msg_pos

section .text
    global _start
_start:
    mov ax,5
    test ax,ax
    js negative

    mov ecx, msg_pos
    jmp print

negative:
    mov ecx, msg_neg

print:
    mov eax,4
    mov ebx,1
    mov edx,msg_len
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
