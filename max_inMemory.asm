# return the largest number present in an array in memory
.globl _start

.data
     size:   .word 16
     array: .word -12, 2, 1, 3, 5, 1, 7, 1, -1, 4, -2, -3, 1, 9, -6, -10
     result: .word 0

.text
_start:
	