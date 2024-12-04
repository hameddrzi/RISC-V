#Write a program in RISC-V assembly language that loads 4 integers stored
#in consecutive memory words (labels v1, ..., v4) and calculates the integer
#value of their arithmetic mean (rounded down). The calculated value should be
#saved in an additional memory location contiguous to those used for
#the calculation (label result). In this exercise, use only
#the base integer instruction set rv64i.


.globl _start
.data        
    v1: .word 1
    v2: .word 2
    v3: .word 3
    v4: .word 4
    result: .word 0
    
.text
_start:
	la t0, v1
	lw t1, 0(t0)
	lw t2, 4(t0)
	lw t3, 8(t0)
	lw t4, 12(t0)
	
	add t1, t1, t2
	add t1, t1, t3
	add t1, t1, t4
	
	srai t1, t1, 2     # 2^2 = 4
	sw t1, 16(t0)
    