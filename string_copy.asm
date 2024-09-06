#Write a RISC-V procedure to copy a string into another (strcpy).
#Assume that dst has enough space in memory to hold the bytes from src,
#meaning that :
#strlen(dst) >= strlen(src).

###############################################################

#		void strcpy(char *dst, char *src) {
#			unsigned long i;
#			unsigned long n;
#			n = strlen(src);
#			m = strlen(dst);
#			for (i = 0; i < n; i++)
#				dst[i] = src[i];
#			for ( ; i < m; i++)
#				dst[i] = '\0';
#			return;
#		}


###############################################################



globl _start
.data
	src: .string "source"
	dst: .string "-------------"
.text
_start:
# call strcpy
	la a0, src
	la a1, dst
	jal ra, strcpy
# print the size of dst
	la a0, dst
	jal ra, strlen
	li a7, 1
	ecall