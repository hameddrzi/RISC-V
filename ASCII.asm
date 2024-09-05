#Write a RISC-V function digit that checks if a byte passed as
#a parameter in register a0 represents a digit character (0-9)
#in ASCII encoding. Checking means: return 1 if the condition is true, 0 otherwise.

#####################################################################################

.globl _start
.data
    d: .byte '1'
.text
_start:
    # call digit
    la   a0, d
    lbu  a0, 0(a0)
    jal  ra, digit

    #exit
    li   a7, 10
    ecall

##### function part #####

digit:
	add t1, 48		# ASCII 0
	add t2, 57		# ASCII 9
	lbu t0, 0(a0)		#load byte
	
	
	
	
	
	