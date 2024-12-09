##################################################################
		#// int (C) equivale a word (RISC-V)
 		#int sumf(int array[], int size) {
    		#return foo(array[0]) + foo(array[size-1]);
 		#}
##################################################################

   .globl _start
    .data
        array: .word 8,5,3,7,2,6,4,1
        size:  .word 8
        
    .text
    _start:
        # chiama sumf
        la   a0, array
        la   a1, size
        lw   a1, 0(a1)
        jal  ra, sumf
        
        # uscita
        li   a7, 10
        ecall
    #******************************************************
    # funzione foo
    #******************************************************
    foo:
        li    t0, 5
        div   a0, a0, t0
        slli  a0, a0, 1
        ret
    #******************************************************
    # completare la funzione sumf nel campo di sotto
    
    				
    sumf:
    	addi sp, sp, -32
    	sd ra, 0(sp)
    	sd s1, 8(sp)
    	sd s2, 16(sp)
    	sd s3, 24(sp)
    	
    	mv s1, a0
    	addi s2, a1, -1
    	
    	lw a0, 0(s1)
    	jal ra, foo
    	mv s3, a0
    	
    	slli s2, s2, 2
    	add s1, s1, s2
    	lw a0, 0(s1)
    	jal ra, foo
    	
    	add a0, s3, a0
    																																																			

    	ld ra, 0(sp)
    	ld s1, 8(sp)
    	ld s2, 16(sp)
    	ld s3, 24(sp)	
    	addi sp, sp, 32
    	ret