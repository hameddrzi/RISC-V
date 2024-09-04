# Convert the following C function into RISC-V
#
# for (i=0; i<a; i++) {
#	  for (j=0; j<b; j++) {
#		   R = 2*R + i + j;
#   }
# }

.globl start
.text
start:
	li   t0, 10           # a
        li   t1, 5            # b
        li   t2, 0            # R

        li   t3, 0           # i=0
for_loop1:
	bge t3, zero, end1
for_loop2:
	li t4, 0		# j = 0
	bge t4, t1, end
	add t5,t2, t2
	add t5, t5, t3
	add t5, t5, t4
	
	addi t4, t4, 1
	j for_loop2
end:
	addi t3, t3, 1
	j for_loop1
end1:
	ecall
	