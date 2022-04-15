[org 0x0100]                 ; Aimal  khan ..... p20-0028.......q3
                              
jmp Start                  
max: dw 0
min: dw 0
result: dww 0
data: dw 1,2,3,4,5,6,7,8,9,10            

Start:

    mov CX, 5
    mov bx, 0 
    mov ax, [data] 
    add bx, 2
    mov dx, [data+bx]

outerloop1:

    cmp ax,dx 
    jnc maximum
    mov ax, dx

    maximum: 

        add bx, 2
        mov dx, [data+bx]
        dec cx
        jnz outerloop1
        mov [max], ax
    
;---------------------------------------------------------------------------------------------------------
        mov cx , 5
        mov bx , 8
        mov ax , [data + bx]
        add bx , 2
        mov dx , [data + bx +2]

outerloop2:
        cmp ax , dx
        jc minimum
        mov ax, dx

        minimum:
            add bx , 2
            mov dx , [data + bx + 2]
            dec cx
            jnz outerloop2
            mov [min], ax

    mov ax , [max]
    mov bx , [min]
    add ax , bx
    mov [result] , ax ; saving the final result
    

mov ax,0x4c00
int 0x21

