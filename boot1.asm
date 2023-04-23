		bits 16

		org	0x0000
		SECTION .text		; code section
        global start				; torna o loabel disponível para o linker 


start:
		mov 	ah, 0eh
		mov		al, 'A'
		mov		bx, 0
		int		10h
hang:
		jmp hang
		
times 510-($-$$) db 0
		dw	0xAA55
		