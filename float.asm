.data
	pi: .float 3.1415666
.text
	li $v0, 2 #For float is two
	lwc1 $f12, pi #Load word, call processor one
	syscall
