# Convert the following C function into RISC-V
# It calculates the Nth Fibonacci number
#
#   int N = 8;
#   int R = 1;
#   int A = 0; int B = 1;
#   while (N > 0) {
#       R = A + B;
#       A = B;
#       B = R;
#       N = N - 1;
#   }
#

.globl start
.text
start:
	li t0, 8	# N
	li t1, 1	# R
	li t2, 0	# A
	li t3, 1	# B
	
loop:
	bge t0, zero, end
	add t1, t2, t3
	add t2, t3, zero
	add t3, t1, zero
	addi t0, t0, -1
	j loop
end:
	ecall
	
	
	
	
	
	
	
	