#Write a procedure swap(array, x, y) that swaps the values of array[x] and array[y], where array is a memory address.

######################################################################################


#		void swap(int array[], int x, int y) {
#		    int temp = array[x];
#		    array[x] = array[y];
#		    array[y] = temp;
#		}


######################################################################################


.globl _start
.data
    size:  .word 8
    array: .word 1,5,3,7,2,6,4,8
    x:     .word 0
    y:     .word 1
    
.text
_start:
    # chiama swap
    la   a0, array
    la   a1, x
    lw   a1, 0(a1)
    la   a2, y
    lw   a2, 0(a2)
    jal  ra, swap
    
    #exit
    li   a7, 10
    ecall

##### function part #####

swap:
	


