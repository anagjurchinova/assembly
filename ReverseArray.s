#Prevrtuvanje niza 
------------------

.data
niza: .space 50
nizaReverse: .space 50
.text
la $a0,niza
li $a1,50
li $v0,8
syscall

la $t0,niza
#count letters
li $t1,0  # i = 0 
loop:
lb $t2,($t0)
beq $t2,$zero,endLoop
addi $t1,$t1,1
addi $t0,$t0,1
j loop
endLoop:
subi $t1,$t1,1

la $t5,niza
add $t2,$t5,$t1
subi $t2,$t2,1  #adresata na krajot na nizata e vo t2

la $t0,nizaReverse
loop2:
lb $t3,($t2)
beq $t3,$zero,endLoop2
sb $t3,($t0)
subi $t2,$t2,1
addi $t0,$t0,1
j loop2
endLoop2:

la $a0,nizaReverse
li $v0,4
syscall
