#Using RISC-V assembly language, write a contains function that receives:

#In register a0, the memory address of a string (array of bytes)
#In register a1, a byte representing an ASCII character (low, lower bound)
#In register a2, a byte representing an ASCII character (high, upper bound)
#The function returns 1 if the given string contains at least one character within the range [low, high]. The function returns 0 otherwise.

#		int contains(char str[], char low, char high) {
#		    int i=0;
#		    while (str[i] != 0x00) {
#		        if (str[i] >= low && str[i] <= high) {
#		            return 1;
#		        }
#		        i++;
#		    }
#		    return 0;
#		}
#################################################################################################

.globl _start
.section .data
    buffer: .string  "test string"
    low:    .byte  'A'
    high:   .byte  'Z'

.text
_start:
    # call contains
    la   a0, buffer
    la   a1, low
    la   a2, high
    lbu  a1, 0(a1)
    lbu  a2, 0(a2)
    jal  ra, contains

    # exit
    li   a7, 10
    ecall
    
##### function part #####

contains:
	lbu t1, 0(t0)			# str[i]
	addi a0, a0, 1
	
	beqz t1, end1
	blt t1, a1, contains
	bgt t1, a2, contains
	
	li a0, 1
	ret
end1:
	li a0, 0
	ret
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	