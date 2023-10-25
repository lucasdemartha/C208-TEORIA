#Exercicio_Programacao_MIPS

.data
    prompt1: .asciiz "Digite o primeiro n�mero (ou 0 para sair): "
    prompt2: .asciiz "Digite o segundo n�mero: "
    prompt3: .asciiz "Digite a opera��o (+, -, *, /): "
    result: .asciiz "Resultado: "
    newline: .asciiz "\n"
    zero: .asciiz "0"

.text
.globl main

main:
    # Leitura do primeiro n�mero (ou 0 para sair)
    li $v0, 4
    la $a0, prompt1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0

    # Verifica se o primeiro n�mero � 0 (para sair)
    beq $t0, $zero, exit

    # Leitura do segundo n�mero
    li $v0, 4
    la $a0, prompt2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    # Leitura da opera��o
    li $v0, 4
    la $a0, prompt3
    syscall
    li $v0, 8
    syscall

    # Execu��o da opera��o
    lb $t2, 0($a0)

    # Soma
    beq $t2, '+', add
    # Subtra��o
    beq $t2, '-', subtract
    # Multiplica��o
    beq $t2, '*', multiply
    # Divis�o
    beq $t2, '/', divide

    j invalid_input

add:
    add $t3, $t0, $t1
    j print_result

subtract:
    sub $t3, $t0, $t1
    j print_result

multiply:
    mult $t0, $t1
    mflo $t3
    j print_result

divide:
    beqz $t1, division_by_zero
    div $t0, $t1
    mflo $t3
    j print_result

division_by_zero:
    li $v0, 4
    la $a0, result
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    li $v0, 4
    la $a0, zero
    syscall
    j exit

invalid_input:
    li $v0, 4
    la $a0, result
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    j exit

print_result:
    li $v0, 4
    la $a0, result
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    j main

exit:
    # Encerrar o programa
    li $v0, 10
    syscall
