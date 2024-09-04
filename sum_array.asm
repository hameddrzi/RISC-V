#Given a word in memory (variable size), followed by "size" integers in
#consecutive words (an array of words), write a RISC-V program that saves
#the sum of the array elements in a variable labeled result.


.globl _start
.data        
    size:   .word 16
    array:  .word 12, 2, 1, 3, 5, 1, 7, 1, -1, 4, -2, -3, 1, 9, -6, 10
    result: .word 0
    
.text
_start:
	la t0, array
	la t1, size
	lw t1, 0(t1)
	li t3, 0

loop:
	blt t1, zero, end1
	add t3, t3, t2
	lw t2, 0(t0)
	addi t0, t0, 4
	addi t1, t1, -1
	j loop
end1:
	la t1, result
	sw t3, 0(t1)
	