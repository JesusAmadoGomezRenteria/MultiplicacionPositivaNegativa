org 100h ; inicio de programa
 
include 'emu8086.inc' 
DEFINE_SCAN_NUM

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

jmp inicio 
menu1 db 13,10,'Multiplicacion positiva y negativa',13,10,   

 
db 13,10,7,'Digite el Primer Numero: $' 
texto2 db 13,10,7,'Digite el Segundo Numero: $'
 
texto5 db 13,10,'El Resultado Es: $' 

 
num1 dw ? 
num2 dw ? 
 
inicio: 
 
mov ah,09 
lea dx,menu1 

int 21h  
 
call SCAN_NUM  
mov num1,cx 
 
mov ah,09 
lea dx,texto2  
int 21h 
 
call SCAN_NUM 
mov num2,cx 

;MULTIPLICACION 
mov ah,09 
lea dx,texto5
int 21h 
mov ax,num1  
mov bx,num2 
mul bx 
call PRINT_NUM 
 

.exit
end