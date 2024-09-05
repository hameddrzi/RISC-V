#Write a RISC-V procedure to calculate the length of a C string,
#excluding the terminator character. C strings are stored as an
#array of bytes in memory, where the byte '\0' (0x00) represents the end of the string.

#The following C code implements strlen (convert it to RISC-V):

#		unsigned long strlen(char *str) {
#		    unsigned long i;
#		    for (i = 0; str[i] != '\0'; i++);
#		    return i;
#		}

###########################################################################


.globl _start
.data
    str: .string  "My string"
.text
_start:
    # call strlen
    la   a0, str
    jal  ra, strlen

    #exit
    li   a7, 10
    ecall
##### function part #####

strlen:
	lbu t0, 0(a0)
#	li t1, 0
for_loop:
	beq t0, zero, end1
#	addi t1, t1, 1
	addi t0, t0, 1
	j for_loop
end1:
	mv a0, t0
	ret
	
	
	
    
