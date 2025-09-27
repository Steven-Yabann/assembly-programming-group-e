; JC → Jump if Carry
section .data
    msg_carry db "(CF=1) -> Yabann Steven 167027",10,0
    msg_nocarry db "(CF=0) -> Yabann Steven 167027",10,0
    msg_len equ $ - msg_nocarry

section .text
    global _start
_start:
    mov ax,0FFFFh
    add ax,1       ; sets CF=1
    jc carry

    mov ecx, msg_nocarry
    jmp print

carry:
    mov ecx, msg_carry

print:
    mov eax,4
    mov ebx,1
    mov edx,msg_len
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
