#Write a RISC-V procedure to calculate the greatest common divisor (GCD)
#of two positive integers a and b. To do this, implement Euclid's algorithm
#as a procedure GCD(a, b) to be called in the main. The pseudo-code for Euclid's algorithm is as follows:

#		int MCD(int a, int b) {
#		    while (a != b) { 
#		        if (a > b)
#		            a = a - b;
#		        else
#		            b = b - a;
#		    }
#		    return a;
#		}
##################################################################################


.globl _start
.data
    num1: .dword 24
    num2: .dword 30
.text
_start:
    # call MCD
    la    a0, num1
    la    a1, num2
    ld    a0, 0(a0)
    ld    a1, 0(a1)     
    jal   ra, mcm

    #exit
    li    a7, 10
    ecall
    
##### FUNCTION PART #####

mcd:

	beq a0, a1, end1
	bge a1, a0, else
	sub a0, a0, a1
	j mcd
else:
	sub a1, a1, a0
	j mcd
end1:
	ret
	
	
#############################################################################

#Write a RISC-V procedure to calculate the least common multiple (LCM) of two
#positive integers a and b, LCM(a, b), to be called in the main, using the following relation:

#MCM(a, b) = (a * b) / MCD(a, b)

#The return value should be placed in register a0.

#############################################################################

mcm:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s1, 8(sp)
	
	mul s1, a0, a1
	jal ra, mcd
	div a0, s1, a0
	
	ld ra, 0(sp)
	ld s1, 8(sp)
	addi sp, sp, 16
	ret
	






