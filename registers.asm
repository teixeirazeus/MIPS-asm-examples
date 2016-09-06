.data
	newLine: .asciiz "\n"
	
.text
	main:
		addi $s0, $zero, 10
		
		#Print value
		li $v0, 1
		move $a0, $s0
		syscall
	
	
	#end
	li $v0, 10
	syscall
	
	increaseMyRegister:
		