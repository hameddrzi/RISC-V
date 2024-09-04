##################################
# want to find max number#
##################################

.globl start
.text

start:

	li t0, 1
	li t1, 5
	li t2, 2
	li t3, 0

	add t3, t0, zero
	bgt t3, t1, jumpt1
	bgt t3, t2, jumpt2
jumpt1:
	add t3, t1, zero
jumpt2:
	add t3, t3, zero
end:
	ecall
	