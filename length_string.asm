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