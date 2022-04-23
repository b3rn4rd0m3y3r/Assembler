Dummy	.EQU	00H
Cont	.EQU	08H
Valor	.EQU	8000H


	.ORG	00150H

	LD	HL,Palavra
Loop:	LD	A,(HL)
	CP	00H
	JR	Z,Fim
	OUT	(01H),A
	INC	HL
	JR	Loop
Fim	HALT

Dados:
Palavra	.DB	"Bernardo Meyer",0

	.END

