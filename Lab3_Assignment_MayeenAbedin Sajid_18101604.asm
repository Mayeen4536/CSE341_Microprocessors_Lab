.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " The output is: $"
m db "Enter a character: $ " 
m2 db "The Sum of $"  
m3 db " and $" 
m4 db "ENTER THREE INITIALS: $"  

m5 db "**********",0DH,0AH,"$"


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 

  
  
  
;Task2 



lea dx,m
mov ah,9
int 21h

mov ah,1 
int 21h 
mov bl,5
add al,bl


lea dx,m1
mov ah,9
int 21h
mov ah,2
mov dl,al
int 21h 


;Task4


mov ah,1
int 21h

mov dl,al
add dl,32d

mov ah,2
int 21h
            
            
            
            
;Task5
mov ah,2
mov dl,"?"
int 21h 

   

mov ah,1
int 21h
 

mov bl,al

mov ah,1
int 21h

mov cl,al

MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h



lea dx,m2
mov ah,9
int 21h 

mov ah,2
mov dl,bl
int 21h 

lea dx,m3
mov ah,9
int 21h

mov ah,2
mov dl,cl
int 21h 

mov ah,2
mov dl," "
int 21h

mov ah,2
mov dl,"i"
int 21h 

mov ah,2
mov dl,"s"
int 21h  

mov ah,2
mov dl," "
int 21h


mov ah,2
add bl,cl
sub bl,30h
mov dl,bl
int 21h       




;Task6 

MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h 
  
lea dx,m4
mov ah,9
int 21h

mov ah,1
int 21h
mov cl,al

mov ah,1
int 21h
mov bl,al 

mov ah,1
int 21h 
mov bh,al



MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h

mov ah,2
mov dl,cl
int 21h
         
MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h
        
mov ah,2
mov dl,bl
int 21h 

MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h

mov ah,2
mov dl,bh
int 21h

MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h 


;Task8 

MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h

lea dx,m5
mov ah,9

int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h        
        
        
        
        
