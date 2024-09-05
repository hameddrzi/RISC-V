#Write a RISC-V procedure strcpy to copy one string into another. Assume that
#dststr has enough space in memory to hold the bytes from srcstr.

#Note: strcpy must use strlen, as in this C code:

#		void strcpy(char *dst, char *src) {
#		    unsigned long i;
#		    unsigned long n, m;
#
#		    n = strlen(src);    
#		    m = strlen(dst);
#
#		    for (i = 0; i < n; i++)
#		        dst[i] = src[i];
#		    for ( ; i < m; i++)
#		        dst[i] = '\0';
#		    return;
#		}


#########################################################################


.globl _start
.data
    srcstr: .string  "string to be copied"
    dststr: .string  "destination string is long enough"
.text
_start:
    
    # chiama strcpy    
    la   a0, srcstr
    la   a1, dststr
    jal  ra, strcpy

    #exit
    li   a7, 10
    ecall
    
    
##### function part #####

strcpy:
	
