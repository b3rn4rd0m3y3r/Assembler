Dummy	.EQU	00H
Valor	.EQU	42H ;66 em decimal

	.ORG	0150H

INIT:	LD	A,Valor
	LD	B,A
	AND	0F0H
	LD	C,A
	RR	C
	RR	C
	RR	C
	RR	C
; Dezenas
	LD	A,00H
Loop:	ADD	A,16H
	DAA
	DEC	C
	JR	NZ,Loop
; Guarda a Soma
	LD	D,A
; Unidades
	LD	A,B
	AND	0FH
; Verifica se a casa está zerada
	CP	00H
	JR	Z,Fim
	LD	C,A
	LD	A,00H
Loop2:	ADD	A,01H
	DAA
	DEC	C
	JR	NZ,Loop2
; Acumula a soma anterior
Fim:	ADD	A,D
	DAA
	
	HALT

	.END