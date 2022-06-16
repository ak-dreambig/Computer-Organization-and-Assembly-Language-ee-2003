org 100h 
jmp start

data: db 'Assembly language - course,  Fast university Peshawar campus'
msglend:
data1: db 'i love Pakistan'
msg2end:




clearscreen:
  mov AH,06h   ;scroll up function
  xor AL,AL    ;number of lines by which to scroll up
  xor cx,cx      ; upper left corner  ch= row cl =column
  ;mov ch,0
  ; mov cl,0

mov Dx,184FH   ; lower right corner DH=row ,Dl =column
;mov dh,18
;mov dl,79
mov BH,07h   ;black on black
INT 10H 
ret

setmode:
   ;mov ax,0003h
   mov al,03h
   mov ah ,00h
   int 10h
ret
setcursor:
  ;mov dx,0c23h
   mov dh,13
   mov dl,35
   mov bh,0
   mov ah ,02h
  int 10h
ret
printchr:
   mov cx,5
    mov bx,0007h
 ; Bl is attribute(brightwhite on green)
  mov ah,09h
  ; Al is ascii
mov al ,2ah ; 2a== *
int 10h
ret

printstr:
mov cx,msglend-data
 mov al,1
mov bh,0
mov bl,07
mov dh,5
mov dl,13
push cs
pop es
mov bp,data
mov ah,13h
int 10h

;mov ah ,00h
;int 16h
ret
setbordercolor:
mov ah,06h
xor al,al
xor cx,cx
mov dh,23
mov dl,01
mov bh,05fh
int 10h

;reightside
mov ah,06h
xor al,al
;xor cx,cx
mov ch,0
mov cl,78
mov dh,24
mov dl,79
mov bh,05fh
int 10h


mov ah ,06h
xor al,al
xor cx,cx
mov dh,0
;mov cl,00h
mov dl,80
mov bh,05fh
int 10h

mov ah ,06h
xor al,al
mov ch,24
mov cl,0
mov dh,24
mov dl,80
mov bh,05fh
int 10h

ret



drawrectang:
mov ah,06h
xor al,al
mov ch,7
mov cl,20
mov dh,15
mov dl,60
mov bh,25h
int 10h
mov cx,msg2end-data1
mov al,1
mov bh,0
mov bl,07
mov dh,11
mov dl,31
push cs
pop es
mov bp ,data1
mov ah,13h
int 10h
ret
rectangle:
mov ah,06h
xor al,al
mov ch,7
mov cl,20
mov dh,15
mov dl,30
mov bh,0x78

int 10h

ret

start:
call clearscreen

call setcursor
call printstr
call setbordercolor
call drawrectang
call rectangle
mov ax,0x4c00
int 0x21


  