.data
	RandomNumber: .word 666
	
.text
	li $v0, 1
	lw $a0, RandomNumber
	syscall