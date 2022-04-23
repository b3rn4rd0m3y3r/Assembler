Dummy	.EQU	00H
Cont	.EQU	08H
Valor	.EQU	8000H
Palavra	.DB	"Bernardo",0

	.ORG	00150H

	LD	C,Cont
	LD	HL,Palavra
Loop:	LD	A,(HL)
	OUT	(01H),A
	INC	HL
	DEC	C
	JR	NZ,Loop
	HALT

	.END

