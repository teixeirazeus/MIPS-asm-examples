.data
	numberA: .word 5
	numberB: .word 6
.text
	main:
		lw $t0, numberA($zero)
		lw $t1, numberB($zero)
		jal adiciona
		jal sub
		
	#end of program
	li $v0, 10
	syscall
	
	adiciona:
		add $t2, $t0, $t1 	#t2 = t0 + t1
	
		li $v0, 1
		move $a0, $t2
		syscall
		
		jr $ra
		
	sub:	
		sub $t3, $t0, $t1 	#t3 = t0 - t1
	
		li $v0, 1
		move $a0, $t3
		syscall
		
		jr $ra