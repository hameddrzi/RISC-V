#Using minarray(array, size) and the procedure swap(array, x, y)
#(which swaps the values of array[x] and array[y]), write a recursive function to sort an array of integers called selection_sort:

#The following C code implements the selection_sort function (convert it to RISC-V):


#		void selection_sort(int array[], int size) {
#		    if (size <= 1) 
#		        return;
    
#		    int min_idx = minarray(array, size);
#		    swap(array, 0, min_idx);
#		    selection_sort(array+1, size-1);
#		}  

###############################################################################################################



  .globl _start
  .data
    size:  .word  10
    array: .word  3,1,6,6,23,17,9,25,3,4
  
  .text
  _start:
      # chiama selection_sort
      la   a0, array
      la   a1, size
      lw   a1, 0(a1)
      jal  ra, selection_sort
      
      #exit
      li   a7, 10
      ecall   
      
      
##### function part #####

selection_sort:

	bne a1, zero, sorted
	ret
sorted:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)

	mv s1, a0		# array
	mv s2, a1		# size
	jal ra, minaaray
	
	mv a2, a0		# array
	li a1, 0		# 0
	mv a0, s1		# min_index
	jal ra, swap
	
	addi a1, s1, -1
	addi a0, s2, 4
	jal selection_sort
	
		
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)
	addi sp, sp, 24
	ret
	
	
	
















	
	
	
	
	
	
	
	
	
