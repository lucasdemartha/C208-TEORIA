.data
f1: .asciiz "Entre com o primeiro numero: "
f2: .asciiz "Entre com o segundo numero: "
f3: .asciiz "Entre com o terceiro numero: "

f_maior: .asciiz "\n Maior que 100!"
f_maior: .asciiz "\n Igual que 100!"
f_maior: .asciiz "\n Menor que 100!"

.text
#leitura do priemiro valor
la $a0,f1
li $v0,4
syscall
li $v0,5
syscall
add $t1,$v0,$0
#leitura do segundo valor
la $a0,f2
li $v0,4
syscall
li $v0,5
syscall
add $t2,$v0,$0
#leitura do terceiro valor
la $a0,f3
li $v0,4
syscall
li $v0,5
syscall
add $t3,$v0,$0
#####PROCESSAMENTO###
add $t1,$t1, $t2
add $t1,$t1, $t3
blt $t1, 100,menor 
bgt $t1,100,maior
la $a0,f_Igual
li $v0,4
j fim
syscall

menor:
la $a0,f_menor
li $v0,4
syscall
maior:
la $a0,f_maior
li $v0,4
syscall
fim: 	li $v0,10
	syscall