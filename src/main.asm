global _start:

section	.text
_start:

	xor eax,eax
	mov al,3
	xor ebx,ebx
	inc	ebx
	mov ecx,buffer
	xor edx,edx
	mov dl,5
	int 80h

;	mov ecx,len
;	shr ecx,2

;	mov eax,code
;	mov esi,eax
;	mov edi,esi

	mov eax,code

.lp:

;	lodsd
;	xor eax,[buffer]
;	stosd

;	loop .lp

	mov ebx,[eax]
	xor ebx,[buffer]
	mov [eax],ebx

	add eax,4
	cmp eax,buffer
	jb	.lp

	jmp code

section	.data
code:	incbin "code-cripted.bin"
;len :	equ	$ - code

;section	.bss
buffer: db	5
