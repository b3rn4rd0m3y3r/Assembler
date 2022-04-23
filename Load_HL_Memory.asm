Dummy	.EQU	00H

	.ORG	00150H

	LD	A,05H
	LD	HL,8000H
	LD	(HL),A
	HALT

	.END

