#Write code to invert an array of double words in memory (size elements).

#		for (int i = 0; i < size/2; i++)  {
#		    long temp = array[i];
#		    array[i] = array[size-i-1];
#		    array[size-i-1] = temp;
#		}      
###################################################################3
.globl _start
.data
    size:   .word  8                  # size of the array        
    array:  .dword 1,2,3,4,5,6,7,8    # array of long integers

.text
_start: