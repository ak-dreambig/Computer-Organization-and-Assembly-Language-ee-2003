;Q: Convert the following code in assembly language	.			[Marks: 6]
a=0
b=200
c=30

while (a! =b)
{
     if(a<100)
        {
            a=c+10
         }
      elseif (a==100)
         {
          break;
          }
      else
          {
           a+=10
           }


; Assembly laguage code. 

; Aimal khan ...... p20-0028.......Q4

[org 0x100]                       

mov ax,0
mov bx,200
mov cx,30

outerloop:
cmp ax , bx
jz end

    cmp ax ,100
    jb firstcondition
    cmp ax,100
    je end              ; 2nd condition
    cmp ax , 100 
    ja thirdcondition    

firstcondition: ;  only this condition will be wxecuted everytime
                        ; an infinte loop
    add cx,10
    add ax,cx
    cmp ax,bx
    jne outerloop
    cmp ax , bx 
    je end
thirdcondition:
    add ax , 10
    add ax , ax 
    cmp ax , bx
    jne outerloop
    cmp ax , bx
    je end


end:
    mov ax, 0x4c00

    int 0x21
    
