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
	
	
	
        ######################
        # Second code fragment
        # x = (x - 2) + y
        # if (x < y)
        #   x = x + 1
        # else
        #   y = y + 1
        ######################
        
        
        addi t0, t0, -2
        add t0, t0, t1
        bge t0, t1, else
        addi t0, t0, 1
else:
	addi t1, t1, 1
        
        
        
        
        
        
        
        
