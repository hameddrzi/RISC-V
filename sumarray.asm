#Write a procedure sumarray that calculates the sum of an array of size word in memory.

#		int sumarray(int[] array, int size) {
#		    int sum = 0;
#		    for (int i = 0; i < size; i++) {
#		        sum += array[i];
#		    }
#		    return sum;
#		}

############################################################################

#		int sumarray(int[] array, int size) {
#		    if (size == 0) {
#		        return 0;
#		    } else {
#		        return array[0] + sumarray(array+1, size-1);
#		    }
#		}

###########################################################################

.globl _start
.data
    array: .word  1,2,3,4,5,6,7,8,9,10
    size:  .word  10
    
.text
_start:
    # chiama sumarray
    la   a0, array
    la   a1, size
    lw   a1, 0(a1)
    jal  ra, sumarray
    
    #exit
    li   a7, 10
    ecall