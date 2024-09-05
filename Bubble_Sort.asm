#		int change = 1;
#		while (change) {
#		    change = 0;
#		    for (int i = 0; i < size-1; i++)  {
#		        if (array[i] > array[i+1]) {
#		            long temp = array[i];
#		            array[i] = array[i+1];
#		            array[i+1] = temp;
#		            chance = 1;
#		        }
#		    }
#		} 
###############################################################################







.globl _start
.data
    size:   .word  8                  # size of the array        
    array:  .dword 8,7,6,5,4,3,2,1    # array of long integers

.text
_start:

	la t0, array
	la t1, size
	lw t1, 0(t1)
	addi t1, t1, -1
	li t2, 1
while:
	ble t1, zero, end1		# size-1 < 0
	
for_loop:
	ld t3, 0(t0)			#array{i}
	ld t4, 0(t0)
	addi t4, t4, 8			#array{i+1}
	ble t3, t4, end2
	sd t3, 0(







