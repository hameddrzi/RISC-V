#Write a program in RISC-V assembly language that calculates
#the maximum of three integers stored in consecutive memory
#words (variables x, y, and z). The maximum value should be stored in the variable result.



.globl _start
.data        
    x: .word 1
    y: .word 2
    z: .word 3
    result: .word 0
        
.text
_start:
	la t0, x
	lw t1, 0(t0)
	lw t2, 4(t0)
	lw t3, 8(t0)
	li t4, 0
loop:
	add t4, t1, zero
	bgt t4, t2, skip1
	add t4, t2, zero
skip1:
	bgt t4, t3, skip3
	add t4, t3, zero
skip3:
	sw t4, 12(t0)
	

