# return the largest number present in an array in memory
.globl _start

.data
     size:   .word 16
     array: .word -12, 2, 1, 3, 5, 1, 7, 1, -1, 4, -2, -3, 1, 9, -6, -10
     result: .word 0

.text
_start:
	la t0, array
	lw t1, 0(t0)
	la t2, size
	lw t2, 0(t2)
	li t3, 0
	li t4, 0
loop:
	bge t4, t2, end
	