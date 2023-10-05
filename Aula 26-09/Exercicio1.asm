#Exercicio_Programacao_MIPS

.data

a: .byte 0x00
b: .byte 0x00

f1: .asciiz "Entre com o primeiro valor: "
f2: .asciiz "Entre com o segundo valor: "
f3: .asciiz "O valor de A é: "
f4: .asciiz "\nO valor de B é: "

.text

#EBTRE COM O PRIMEIRO VALOR
li $v0, 4
la $a0, f1
syscall
li $v0, 5
syscall
add $t0, $v0, $0 #$t0 <- $v0 + 0
sb $t0,a

#ENTRE COM O SEGUNDO VALOR
li $v0, 4
la $a0, f2
syscall
li $v0, 5
syscall
add $t1, $v0, $0 #$t1 <- $v0 + 0
sb $t1, b

#TROCA DE VALORES A E B
li $v0, 4
la $a0, f3
syscall
li $v0, 1
lb $a0, b
syscall

li $v0, 4
la $a0, f4
syscall
li $v0, 1
lb $a0, a
syscall
