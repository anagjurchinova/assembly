#Brisenje duplikati od niza
--------------------------------
.data
niza: .space 50

.text
la $a0,niza
li $a1,50
li $v0,8
syscall

la $t0,niza
addi $t4,$zero,42 #vo t4 stavame ascii na '*'

#vtoriot loop pocnuva za 1 ponatamu i site isti bukvi so ke gi najde gi zamenuva so *
for:
lb $t1,($t0)
beq $t1,$zero,endFor
addi $t2,$t0,1 # od naredniot character natamu

loop2:
lb $t3,($t2)
beq $t3,$zero,endLoop2
bne $t3,$t1,skip
sb $t4,($t2)
skip:
addi $t2,$t2,1
j loop2
endLoop2:
addi $t0,$t0,1
j for
endFor:

#ke se pecatat samo tie bukvi kade so nema *
la $t0,niza
for2:
lb $t1,($t0)
beq $t1,$zero,end
beq $t1,$t4,skip2
move $a0,$t1
li $v0,11
syscall
skip2:
addi $t0,$t0,1
j for2
end:

li $v0,10
syscall


