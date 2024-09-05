#Write a RISC-V procedure strcmp to compare two character strings.
#strcmp(str1, str2) returns 0 if str1 is equal to str2, 1 otherwise.

#############################################################################


.globl _start
.data
    str1: .string  "first."
    str2: .string  "second."
.text
_start:
    # call strcmp
    la   a0, str1
    la   a1, str2
    jal  ra, strcmp

    #exit
    li   a7, 10
    ecall
    
##### function part #####

strcmp:
	lbu t0, 0(a0)		#load string 1
	lbu t1, 0(a1)		#load string 2
for_loop:
	bne t0, t1, end_loop
	
	bne t1, zero, continua
	addi a0, zero, 0
	ret
continua:
	addi a0, a0, 1
	addi a1, a1, 1
	j for_loop
end_loop:
	addi a0, zero , 1
	ret
	
	
	
	
	
	
	
	
	