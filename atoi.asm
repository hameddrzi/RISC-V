#Write a RISC-V function atoi that converts an ASCII string containing
#a positive integer into a numeric variable (a two's complement integer).
#The resulting numeric value should be returned to the caller in register a0.

##############################################################################

#		unsigned long atoi(char *str, unsigned long n) {
#		    if (n == 0)
#		      return 0;
#		    return (10*atoi(str, n-1) + str[n-1] - '0');
#		}

##############################################################################

.globl _start
.data
    numstr: .string  "123"
.text
_start:
    # chiama strlen per ottenere la lunghezza della stringa
    la   a0, numstr
    jal  ra, strlen
    
    # chiama atoi
    mv   a1, a0
    la   a0, numstr
    jal  ra, atoi

    #exit
    li   a7, 10
    ecall
atoi:
	bne a1, zero, go_ahead
	add a0, zero, zero
	jr, ra
go_ahead:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s1, 8(sp)
	
	addi a1, a1, -1
	add t0, a0, a2
	lbu s1, 0(t0)
	addi s1, s1, -48
	jal atoi
	
	li t0, 10
	mul t0, t0, a1
	add a0, s1, t0
	
	ld ra, 0(sp)
	ld s1, 8(sp)
	addi sp, sp, 16
	jr ra
	
	
	
	










