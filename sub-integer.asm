.data
	numberA: .word 22
	numberB: .word 30
.text
	lw $s0, numberA
	lw $s1, numberB
	
	sub $t0, $s0, $s1 #t0 = 22 - 30
	
	li $v0, 1
	move $a0, $t0
	syscall
