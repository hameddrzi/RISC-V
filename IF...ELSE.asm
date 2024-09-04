.globl start
.text

start:

  	######################
        # First code fragment
        # x = x - y
        # if (x < 0)
        #     x = 0
        # y = y - 1
        ######################
	li t0, 2   
	li t1, 3
	
	sub t0, t0, t1
	bge t0, zero, jump
	addi t0, zero, 0
jump:
	addi t2, t2, -1
