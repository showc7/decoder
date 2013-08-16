global	_start
[ORG 0x080490b0]
[BITS 32]

section	.text

_start:
;	mov eax,4
	xor eax,eax
	mov al,4
;	mov ebx,1
	xor ebx,ebx
	inc ebx
	mov ecx,msg
;	mov edx,88
	xor edx,edx
	mov dl,84
	int 80h

;	mov eax,1
	xor eax,eax
	inc eax
;	mov ebx,0
	xor ebx,ebx
	int 80h
section	.data
msg:	db 	"Hello world!!!",0xA,0xD	;16
	db	"It's very good that you see this message",0xA,0xD ;42
	db	"May be you really new key",0xA,0xD ;27
