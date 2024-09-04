#Write RISC-V code that checks if an array of size elements in memory
#(consecutive double words) contains a sequence of sorted integers (increasing order).
#The result (0 if not sorted, 1 if sorted) should be saved in a variable labeled result.

#	result = 1;
#	for (int i = 0; i < size-1; i++) {
#	    if (array[i] > array[i+1]) {
#	        result = 0; 
#	        break;
#	    }
#	}
################################################################################################


.globl _start
.data
    size:   .word  8                  # size of the array        
    array:  .dword 1,2,3,4,5,6,7,8    # array of long integers
    result: .word  -1                 # store the result
    
.text
_start:

	la t0, array
	li t1, size
	
	
