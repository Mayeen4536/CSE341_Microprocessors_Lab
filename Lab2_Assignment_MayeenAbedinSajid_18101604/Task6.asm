
mov ax,5
mov bx,2
mov cx,3 


#1
sub ax,bx
neg ax


#2
inc ax
neg ax


#3
inc bx
mov [0121h],ax 
add [0121h],bx
mov cx,[0121h]

#4
dec ax
mov [0121h],bx
sub [0121h],ax
mov ax,[0121h]
