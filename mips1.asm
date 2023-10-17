.data

f1: .asciiz "Entre com o primeiro valor inteiro de 1 a 100: "
f2: .asciiz "Entre com o segundo valor inteiro de 1 a 100: "
f3: .asciiz "Entre com o terceiro valor inteiro de 1 a 100: "
f4: .asciiz "Entre com o quarto valor inteiro de 1 a 100: "
f5: .asciiz "Entre com o quinto valor inteiro de 1 a 100: "
f6: .asciiz "Entre com o sexto valor inteiro de 1 a 100: "

f_final: .asciiz "\n O resultado é: "

.text

li $t0, 6

#primeiro valor

la $a0, f1
li $v0, 4
syscall
li $v0, 5
syscall
add $t1, $v0, $0

#segundo valor

la $a0, f2
li $v0, 4
syscall
li $v0, 5
syscall
add $t2, $v0, $0

#terceiro valor

la $a0, f3
li $v0, 4
syscall
li $v0, 5
syscall
add $t3, $v0, $0

#quarto valor

la $a0, f4
li $v0, 4
syscall
li $v0, 5
syscall
add $t4, $v0, $0

#quinto valor

la $a0, f5
li $v0, 4
syscall
li $v0, 5
syscall
add $t5, $v0, $0

#sexto valor

la $a0, f6
li $v0, 4
syscall
li $v0, 5
syscall
add $t6, $v0, $0

#processo

add $t1, $t1, $t2
add $t1, $t1, $t3
add $t1, $t1, $t4
add $t1, $t1, $t5
add $t1, $t1, $t6

div $t1, $t1, $t0

la $a0, f_final
li $v0, 4
syscall

move $a0, $t1
li $v0, 1
syscall

li $v0, 10
syscall


