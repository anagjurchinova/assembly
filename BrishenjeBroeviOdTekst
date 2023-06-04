#Gi brishe broevite od tekst
.data
niza: .space 50

.text
#vnesuvanje niza
la $a0,niza
li $a1,50
li $v0,8
syscall

la $t2,niza 

li $t1,47
li $t5,42
#58

for:
lb $t3,($t2)
beq $t3,$zero,endFor
slt $t0,$t1,$t3
beq $t0,$zero,skip
slti $t0,$t3,58
beq $t0,$zero,skip
sb $t5,($t2)
skip:
addi $t2,$t2,1
j for
endFor:

#pecatenje niza
la $t2,niza
loop:
lb $t3,($t2)
beq $t3,$zero,endLoop
beq $t3,$t5,skip2
move $a0,$t3
li $v0,11
syscall
skip2:
addi $t2,$t2,1
j loop
endLoop:

li $v0,10
syscall

