.model small;
.data
	a db 1
	b db 2
	c db 3
	d db 4
	e db 5
	f dd ?
.code
.486
	mov ax,@data
	mov ds,ax
	mov al,a
	mov ah,b
	add al,ah;(a+b)
	mov bl,al
	imul al
	mov ah,bl
	imul ah ;
	mov ah,2
	imul ah;AL=54
	mov dl,al;
	mov al,c
	mov bh,2
	;shr eax,8
	imul bh ;2c
	mov cl,al
	mov al,d
	imul al;d^2
	sbb cl,al
	mov al,cl
	mov bh,a
	imul bh
	adc dl,al
	mov al,e
	add al,bh
	mov ah,4
	imul ah
	;mov ah,al
	mov bl,al
	mov al,dl
	cbw
	div bl
	
	;mov al,ah
	;mov al,dl
	mov ah,4ch
	int 21h
end
