[org 0x0100] ;               Aimal khan......p20-0028.......Q2
 
                      ; square root of 20.
mov ax,0
mov cx,20   
start:
	add ax,20
	sub cx,1
	jnz start

mov ax,0x4c00
int 0x21