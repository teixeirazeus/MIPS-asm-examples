.data
	vector: .space 12 
	size: .word 12	#tamanho do vetor
	enter: .asciiz "/n"
.text
	main:
		
		lw $a1, vector($zero)
		lw $a2, size
		
		jal printvec
		
	#end of program
	li $v0, 10
	syscall
	
	printvec:
		#arg1 = vetor, arg2 = N
		#grava t0 na pilha
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, -4
		sw $1, 0($sp)
	
		li $v0, 1	#Seta para printar
		li $t0, 0	#Contador do laço
		move $t1, $a1 #Endereço do vetor
		
		L1:
		move $a0, $a1($t1)
		syscall	#printa
		
		addi $t1, $t1, 4 #anda uma casa
		addi $t0, $t0, 4
		bne $t0, $a2, L1
		
		#Restaura pilha
		lw $t1, 0($sp)
		addi $sp, $sp, 4
		lw $t0, 0($sp)
		addi $sp, $sp, 4
		
		#End Func
		jr $ra
	

	multi:
		mul $v1, $t0, $t1 	
	
		jr $ra
