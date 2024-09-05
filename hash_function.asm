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
	
