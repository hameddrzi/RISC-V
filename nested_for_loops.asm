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