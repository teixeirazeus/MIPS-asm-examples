.data
	myMessage: .asciiz "Moshi moshi programmer desu :3 \n"
	
.text
	li $v0, 4	#Print one value of string
	la $a0, myMessage	#Message to argument varible
	syscall	#Do it faggote