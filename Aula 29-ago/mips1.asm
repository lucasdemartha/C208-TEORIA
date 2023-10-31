.data

#Declaracao de variaveis

.text

#Corpo do programa

addi $t1, $0, 0xFFFFFFFF # $t1 recebe 0x20
addi $t2, $0, 0xEEEEEEEE # $t2 recebe 0x50
#addi $t3, $t1, -0x10 # $t3 recebe 
#sub $t4, $t1, $t2
mul $t3, $t1, $t2