.data

f1: .asciiz "Digite o primeiro valor inteiro (entre 1 a 100):"
f2: .asciiz "Digite o segundo valor inteiro (entre 1 a 100):"
f3: .asciiz "Digite o terceiro valor inteiro (entre 1 a 100):"
f4: .asciiz "Digite o quarto valor inteiro (entre 1 a 100):"
f5: .asciiz "Digite o quinto valor inteiro (entre 1 a 100):"
f6: .asciiz "Digite o sexto valor inteiro (entre 1 a 100):"
f_res: .asciiz "\n Media entre os valores: "

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

la $a0, f1
li $v0, 4
syscall
li $v0, 5
syscall
add $t6, $v0, $0

#PROCESSO

add $t1, $t1, $t2
add $t1, $t1, $t3
add $t1, $t1, $t4
add $t1, $t1, $t5
add $t1, $t1, $t6

div $t1, $t1, $t0

la $a0, f_res
li $v0, 4
syscall
li $v0, 1
move $a0, $t1
syscall

# Encerrar o programa
li $v0, 10
syscall


