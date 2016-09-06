.data
	numberA: .word 5
	numberB: .word 3
.text
	lw $t0, numberA($zero)
	lw $t1, numberB($zero)
	
	add $t2, $t0, $t1 	#t2 = t0 + t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall