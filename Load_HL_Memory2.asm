Dummy	.EQU	00H
Ender1	.EQU	8000H

	.ORG	00150H

	LD	A,05H
	LD	HL,Ender1
	LD	(HL),A
	HALT

	.END

