.data
n1: .byte 0x20
n2: .byte 0x60
m: .byte
p1:.word 0x00000000
p2: .half 0x0000
p3: .byte 0x00
.text
#la $s0,n1
#la $s1,n2
#lb $t1,n1
#lb $t2,n2
#lb $t2,1($s0)
#add $t3,$t1,$t2
#srl $t4,$t3,1
#sb $t4,m
li $t1, 0x10203040
li $t2, 0x5060
li $t3, 0x70
sw $t1,p1
sh $t2,p2
sb $t3, p3