.text

li $t0, 0x50 #f
li $t1, 0x40 #g
li $t2, 0x30 #h
li $t3, 0x20 #i
li $t4, 0x10 #j

slt $t6, $t2, $t1

beq $t3, $t4, L1
	add $t0, $t1, $t2
	j fim
L1: sub $t0, $t0, $t3
fim: