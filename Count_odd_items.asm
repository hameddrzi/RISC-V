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
	li t3, 2
	li t5, 0
	
loop:
	ble t1, zero, end1
	lb t2, 0(t0)
	rem t4, t2, t3
	beq t4, zero, jump1
	addi t5, t5, 1
	addi t0, t0, 1
	addi t1, t1, -1
	j loop
jump1:
	
	