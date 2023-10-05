#Exercicio_Programacao_MIPS

.data
    prompt1: .asciiz "Digite o primeiro n�mero: "
    prompt2: .asciiz "Digite o segundo n�mero: "
    prompt3: .asciiz "Digite o terceiro n�mero: "
    newline: .asciiz "\n"

.text
.globl main

main:
    # Leitura do primeiro n�mero
    li $v0, 4
    la $a0, prompt1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0

    # Leitura do segundo n�mero
    li $v0, 4
    la $a0, prompt2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    # Leitura do terceiro n�mero
    li $v0, 4
    la $a0, prompt3
    syscall
    li $v0, 5
    syscall
    move $t2, $v0

    # Ordena��o dos n�meros em ordem decrescente
    # Encontre o maior n�mero (t0 <- t1 <- t2)
    # $t0 <- maior, $t1 <- meio, $t2 <- menor
    slt $t3, $t1, $t0
    beqz $t3, skip_swap1
    move $t4, $t0
    move $t0, $t1
    move $t1, $t4
skip_swap1:
    slt $t3, $t2, $t1
    beqz $t3, skip_swap2
    move $t4, $t1
    move $t1, $t2
    move $t2, $t4
skip_swap2:

    # Imprimir n�meros em ordem decrescente
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 1
    move $a0, $t1
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall
