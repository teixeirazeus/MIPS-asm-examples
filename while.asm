.data
	enter: .asciiz "\n"
.text
	main:
		# i = 0
		
		addi $t0, $zero, 0
		
		while:
			bgt $t0, 10, exit	#If t0 > 10
			
			addi $t0, $t0, 1	#i++
			
			li $v0, 1
			move $a0, $t0
			syscall
			
			li $v0, 4
			la $a0, enter
			syscall
			
			j while
			
		exit:
		
		
	#end of program
	li $v0, 10
	syscall