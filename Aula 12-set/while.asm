.data

dado1: .word 0x00000010
dado2: .word 0x00000010
dado3: .word 0x00000010
dado4: .word 0x00000020

.text
li $s5, 0x00000010 #este é o valor a ser comparado (k)
li $s6, 0x10010000 #end. base do vetor "save"
li $s3, 0 #inicializa o offset com zero

loop:
	add $t1, $s3, $s3 #t1 <- 2*offset
	add $t1, $t1, $t1 #t1 <- 4*offset
	add $t1, $s6, $t1 #t1 recebera o end. base somado ao offset
	
	lw $t0, 0($t1) #carrega a posicao i do vetor em $t0
	
	bne $t0, $s5, fim #faz a comparacao com o valor de k
	add $s3, $s3, $s4 #incrementa o offset
	j loop
fim:
