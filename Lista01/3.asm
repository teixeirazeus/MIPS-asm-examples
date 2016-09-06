.data
	numberA: .word 5
	numberB: .word 6
.text
	main:
		lw $t0, numberA($zero)
		lw $t1, numberB($zero)
		
		move $a1, $t0
		move $a2, $t1
		jal multi
		
		move $s1, $v1
		
		li $v0, 1
		move $a0, $v1
		syscall
		
	#end of program
	li $v0, 10
	syscall
	
	multi:
		mul $v1, $a1, $a2 	
	
		jr $ra
