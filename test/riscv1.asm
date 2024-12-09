  ####################################################################################################
   		#// int (in C) equivale a word (in RISC-V)
 		#int anydiv7(int array[], int size) {
    		#for (int i = 0; i < size; i++) {
        		#if (array[i] % 7 == 0) { // se divisibile per 7
            		#return 1;
        		#}
    		#}
    		#return 0;
 		#}
    
   ####################################################################################################
        
     .globl _start
    .data
        array: .word 8,5,3,7,2,6,4,1
        size:  .word 8
        
    .text
    _start:
        # chiama anydiv7
        la   a0, array
        la   a1, size
        lw   a1, 0(a1)
        jal  ra, anydiv7
        
        #exit
        li   a7, 10
        ecall
    #******************************************************
    # completare la funzione anydiv7 nel campo di sotto
    
anydiv7:
	li t0, 0		#i = 0
	li t1, 7		#dividere
for_loop:
	bge t0, a1, end1
	
	slli t2, t0, 2
	add t2, t2, a0
	lw t2, 0(t2)
	
	rem t1, t2, t1
	beq t1, zero, return1
	addi t2, t2, 1
	j for_loop
return1:
	li a0, 1
	ret
	
end1:
	li a0, 0
	ret