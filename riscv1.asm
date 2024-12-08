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
    