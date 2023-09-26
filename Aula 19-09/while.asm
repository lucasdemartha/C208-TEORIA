.text
	# x = $t1
	# y = $t2
	# while (x < 10)
	# y = y + 1;
	# x = x + 1;
	
	li $t1, 2
	li $t2, 5
	
	retorna:
	bge $t1, 10, fim
		addi $t1, $t1, 1 
		addi $t2, $t2, 1
		j retorna
	fim: