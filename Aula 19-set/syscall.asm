.data
	frase: .asciiz "Entre com sua idade: " 
	frase1: .asciiz "Voce e menor de idade!"
	frase2: .asciiz "Voce e maior de idade!"
.text
	# Imprimindo a frase
	li $v0, 4
	la $a0, frase
	syscall
	
	# Leitura do valor digitado pelo usuário
	li $v0, 5
	syscall
	add $t1, $v0, $0
	
	bge $t1, 18, maior
		li $v0, 4
		la $a0, frase1
		syscall
		j fim
	maior: 
		li $v0, 4
		la $a0, frase2
		syscall
	fim: