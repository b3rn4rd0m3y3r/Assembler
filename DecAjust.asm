Dummy	.EQU	00H
Valor	.EQU	40H ;64 em decimal


	.ORG	0150H

INIT:	LD	A,Valor
	LD	B,A
	LD	C,A
	RR	C
	RR	C
	RR	C
	RR	C
	LD	A,00H
Loop:	ADD	A,16H
	DAA
	DEC	C
	JR	NZ,Loop
	
	HALT

	.END