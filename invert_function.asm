#Write a procedure invert(array, size) that uses swap (defined in the previous exercise) to reverse an array in memory.

#The following C code implements invert (convert it to RISC-V):

#		void invert(int[] array, int size) {
#		    int i;
#		    for (i = 0; i < size/2; i++) {
#		        swap(array, i, size-i-1);
#		    }
#		}  

######################################################################################################

   
       
.globl _start
.data
    size:  .word 8
    array: .word 1,5,3,7,2,6,4,8
.text
_start:
    # chiama invert
    la   a0, array
    la   a1, size
    lw   a1, 0(a1)        
    jal  ra, invert
    
    #exit
    li   a7, 10
    ecall

##### function part #####    
        
            
invert:                    
                                  