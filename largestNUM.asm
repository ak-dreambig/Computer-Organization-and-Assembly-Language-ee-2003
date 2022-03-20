[org 0x0100]                 ; Aimal  khan ..... p20-0028
                              
jmp Start                  

maximum: dw 0

rollnumber : dw 2, 0, 0, 0, 2, 8             ; to find largest number in an array

Start:

mov CX, 6
mov bx, 0 

mov ax, [rollnumber] 

add bx, 4

mov dx, [rollnumber+bx]

outerloop:

cmp ax,dx 

jnc Skip
mov ax, dx

Skip: 

add bx, 1
mov dx, [rollnumber+bx]
dec cx

jnz outerloop

mov [maximum], ax

mov ax, 0x4c00

int 0x21
;end
