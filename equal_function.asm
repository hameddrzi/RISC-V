#Write a procedure called equal(array, x, y) that returns 1 if the value at
#array[x] is equal to the value at array[y]. 
#Otherwise, the function should return 0. The return value should be placed in register a0.

########################################################################

#		// int (C) equivale a word (RISC-V)
#		int equal(int array[], int x, int y) {
#		    if (array[x] == array[y]) {
#		        return 1;
#		    } else {
#		        return 0;
#		    }
#		}

########################################################################

.globl _start
    .data        
        array: .word 1,1,2,2,3,4,4,1
        x:     .word 0
        y:     .word 1
        
    .text
    _start:
        # chiama equal
        la   a0, array
        la   a1, x
        lw   a1, 0(a1)
        la   a2, y
        lw   a2, 0(a2)
        jal  ra, equal
        
        #exit
        li   a7, 10
        ecall
        
        
##### function part #####      
        
            
equal:        
        
        
        
        
        
        
        