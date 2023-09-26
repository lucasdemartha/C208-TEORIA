.data
	frase1: .asciiz "Entre com um numero inteiro: "
	frase2: .asciiz "Par"
	frase3: .asciiz "Impar"
.text
	li $v0, 4
	la $a0, frase1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $0
	
	li $t2, 2
	
	div $t1, $t2
	mfhi $t3
	beqz $t3, par
		li $v0, 4
		la $a0, frase3
		syscall
		j fim
	par: 
		li $v0, 4
		la $a0, frase2
		syscall
	fim: