.data
	Dobrado: .double 6.666
	zeroDubl: .double 0.0
	
.text
	ldc1 $f2, Dobrado #Load double call processor one
	ldc1 $f0, zeroDubl
	
	li $v0, 3 #Print double
	add.d $f12, $f2, $f0
	syscall