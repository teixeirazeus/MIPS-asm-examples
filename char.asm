.data
	mychar: .byte   'K'
	
.text ciiz 
	li $v0, 4
	la $a0, mychar
	syscall
	syscall
	syscall

	