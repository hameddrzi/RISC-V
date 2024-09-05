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

palindrome:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)
	sd s3, 24(sp)
	sd a0, 32(sp)
	
	addi s1, zero, 0		#i = 0
	addi s2, a1, -1			# j = size - 1
	addi s3, zero, 1		# result = 1
	
while_loop:
	bge s1, s2, end
	
	ld a0, 32(sp)
	add a1, s1, zero
	add a2, s2, zero
	jal ra, equal
	and s3, s3, a0
	
	addi s1, s1, 1
	addi s2, s2, -1
	j while_loop
end:
	mv a0, s3
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	addi sp, sp, 40
	ret
	
	
	
	
	

