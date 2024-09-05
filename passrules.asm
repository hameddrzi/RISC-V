#Using RISC-V assembly language, write a function passrules that receives:

#In register a0, the memory address of a string (array of bytes)
#The function returns 1 if the given string contains at least 1 uppercase letter and at least 1 digit. The function returns 0 otherwise.

#The following C code implements passrules (convert it to RISC-V):

#		int passrules(char str[]) {
#		    int uppercase = contains(str, 'A', 'Z');
#		    int numbers   = contains(str, '0', '9');
#		    return (uppercase && numbers);
#		}
#
#		// Tabella ASCII:
#		// ASCII 'A' -- hex: 0x41 dec: 65
#		// ASCII 'Z' -- hex: 0x5a dec: 90
#		// ASCII '0' -- hex: 0x30 dec: 48
#		// ASCII '9' -- hex: 0x39 dec: 57

##########################################################################

.globl _start
.data
      buffer: .string  "BADPass4"
.text
_start:
    # call passrules
    la   a0, buffer
    jal  ra, passrules

    #exit
    li   a7, 10
    ecall

##### function part #####

passrules:
	
    