#Write a function minarray(array, size) that returns the index of
#the minimum value in the array (assume the array is not empty, i.e., size > 0).

##################################################################################

#		int minarray(int[] array, int size) {
#		    int min_idx = 0;
#		    int min_val = array[0];
#		    int i = 1;

#		    while (i < size) {
#		        if (array[i] < min_val) {
 #           min_idx = i;
#		            min_val = array[i];
#		        }
#		        ++i;
#		    }
#		    return min_idx;
#		}


#################################################################################


  .globl _start
  .data
    size:  .word  10
    array: .word  3,1,6,6,23,17,9,25,3,4
  
  .text
  _start:
      # chiama minarray
      la   a0, array
      la   a1, size
      lw   a1, 0(a1)
      jal  ra, minarray
      
      #exit
      li   a7, 10
      ecall   

##### function part #####


minarray:
	li t0, 0		# min_idx
	lw t2, 0(a0)		#int min_val
	li t3, 1		#i = 1
	
while_loop:

	beq t3, a1, end1
	
	slli t4, t3, 2
	add t4, a0, t3
	lw t4, 0(t4)
	
	bgt t4, t2, continue
	
	mv t2, t4
	mv t0, t3
continue:
	addi t3, t3, 1
	j while_loop
end1:
	mv a0, t0
	jr ra
	
	







	

