# return the largest number present in an array in memory
.globl _start

.data
     size:   .word 16
     array: .word -12, 2, 1, 3, 5, 1, 7, 1, -1, 4, -2, -3, 1, 9, -6, -10
     result: .word 0

.text
_start:
	la t0, array
	la t1, size
	lw t2, 0(t0)
	lw t1, 0(t1)
	
loop:
	lw t3, 0(t0)
	bge t2, t3, skip1
	add t2, t3, zero
skip1: 
	addi t0, t0, 4
	addi t1, t1, -1
	bne t1, zero, loop
	
	la t0, result
	sw t3, 0(t0)
	
	
	