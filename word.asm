.data
	mychar: .word   'K'
	mybaby: .asciiz " took my baby away\n"
	
.text ciiz 
	li $v0, 4
	la $a0, mychar
	syscall
	syscall
	syscall
	
	la $a0, mybaby
	syscall