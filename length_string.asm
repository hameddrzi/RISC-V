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
	addi t0, zero, 0
for_loop:
	add t1, t0, a0		#add i into str[]
	lbu t1, 0(t1)		#str[i]

	beq t1, zero, end1
	addi t0, t0, 1
	j for_loop
end1:
	addi a0, t0, 0
	ret


	
	
	
    
