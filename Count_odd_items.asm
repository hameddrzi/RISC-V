#Given a word in memory (size), followed by "size" bytes (an array of bytes),
#write a RISC-V program that counts the total number of odd numbers among the
#elements in the array. The resulting value should be saved in a variable labeled result.


.globl _start
.data
    size:   .word 8                  # size of the array        
    array:  .byte 2,1,3,2,3,-6,1,23  # the array of bytes
    result: .word 0                  # store the result
    
.text
_start:

	la t0, array
	la t1, size
	lw t1, 0(t1)
	li t3, 1
	
