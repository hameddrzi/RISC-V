#Write code to invert an array of double words in memory (size elements).

#		for (int i = 0; i < size/2; i++)  {
#		    long temp = array[i];
#		    array[i] = array[size-i-1];
#		    array[size-i-1] = temp;
#		}      
###################################################################









.globl _start
.data
    size:   .word  8                  # size of the array        
    array:  .dword 1,2,3,4,5,6,7,8    # array of long integers

.text
_start:
	la t0, array
	la t1, siza
	
	lw t1, 0(t1)
	srai t1, t1, 1			#size /2
	li t3, 0			#long temp
for_loop:
	bge t1, zero, end1
	ld t2, 0(t0)			#array[i]
	
	
	
	
	

	
	
	
	
	