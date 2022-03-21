[org 0x100]               ;Aimal khan----LAB-TASK
jmp start                 

multiplicand: db 13 
multiplier: db 5
result: db 0


start:
    mov cl, 4
    mov bl, [multiplicand]
    mov dl, [multiplier]
checkbit:
    shr dl,1
    jnc skipAddition
        add [result], bl

skipAddition:
    shl bl,1

dec cl
jnz checkbit

end:
    mov ax, 0x4c00
    int 0x21
