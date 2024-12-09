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
    				
 		