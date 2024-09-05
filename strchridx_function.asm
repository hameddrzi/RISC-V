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