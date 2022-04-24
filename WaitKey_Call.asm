Funcao	.EQU	01H

	.ORG	150H

	LD	A,00H
	OUT	(02H),A	; Zero na porta 2 seleciona VT100
	LD	A,00H			
Loop	IN	A,(01H)	; Porta 1 recebe caracter digitado
	CP	00H
	JR	Z,Loop
	Call Mostra
	CP	0DH	; ENTER encerra o loop
	JR	NZ,Loop
	HALT

Mostra	PUSH	AF
	OUT	(01H),A
	POP	AF
	RET

	
	.END