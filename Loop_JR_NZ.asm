Dummy	.EQU	00H
Cont	.EQU	04H
Valor	.EQU	8000H

	.ORG	00150H

	LD	A,Cont
	LD	HL,Valor
Loop:	LD	(HL),A
	INC	HL
	DEC	A
	JR	NZ,Loop
	HALT

	.END

