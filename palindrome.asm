#Write a procedure called palindrome(array, size) that returns 1 if the integer array
#of size size is a palindrome, otherwise returns 0.

#The return value should be placed in register a0.

#		// int (C) equivale a word (RISC-V)    
#		int palindrome(int array[], int size) {    
#		    int i = 0;
#		    int j = size - 1;
#		    int result = 1;    

#		    while (i < j) {   
#		        // result = result AND equal(array, i, j);
#		        result = result & equal(array, i, j);
#		        i++;
#		        j--;
#		    }    
#		    return result;    
#		}

############################################################################


  .globl _start
    .data
        array: .word 1,2,3,4,5,4,3,2,1
        size:  .word 9
        
    .text
    _start:
        # chiama palindrome
        la   a0, array
        la   a1, size
        lw   a1, 0(a1)
        jal  ra, palindrome
        
        #exit
        li   a7, 10
        ecall
        
##### function part #####