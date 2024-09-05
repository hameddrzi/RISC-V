#Write a RISC-V procedure strchridx(str, c) to return the index
#of the first occurrence of c in str. strchridx(str, c) returns -1 if c is not present in str.

#		long long strchridx(char *str, char c) {
#		    long long i = 0;
#		    while (str[i] != '\0' and str[i] != c) { 
#		        i++;
#		    }
#		    if (str[i] == '\0') { 
#		        return -1;
#		    } else { 
#		        return i;
#		    }
#		}

###########################################################################################

.globl _start
.data
    str:  .string "my long string"
    c:    .byte 'g'
.text
_start:
    # call strchridx
    la   a0, str
    la   a1, c
    lb   a1, 0(a1)
    jal  ra, strchridx

    #exit
    li   a7, 10
    ecall

##### function part #####

strchridx:
	li t0, 0		#long long i
while_loop:
	lbu t1, 0(a0)
	beq t1, a1, end
	addi a0, a0, 1
	addi t0, t0, 1
	
	bne t1, zero, while_loop
	addi a0, zero, -1
	ret
end:
	addi a0, t0, 0
	ret
	
	
	
	
	
	
	
