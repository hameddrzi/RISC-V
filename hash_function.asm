#		long hash(char *str) {
#		    long hash = 5381;
#		    int i = 0;
#
#		    while (str[i] != '\0') {
#		        hash = ((hash << 5) + hash) + str[i];
#		        i++;
#		    }
#		    return hash;
#		}

#################################################################################

.globl _start
.data
    str: .string "Hello World!"

.text
_start:
    # call hash
    la  a0, str
    jal ra, hash

    #exit
    li   a7, 10
    ecall
  
##### function part #####

hash:
	li t0, 5381		#hash
	li t1, 0		#i
while_loop:
	lbu t2, 0(a0)
	beqz t2, end1
	
	slli t3, t0, 5		# shift left 2^5
	add t0, t0, t3
	add t0, t0, t2
	addi t2, t2, 1		# i++
	lbu t0, 0(a0)
	j while_loop
end1:
	mv a0, t0
	ret
	
	
	
	
	
	
	
	
	
	
	
