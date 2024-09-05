#Write a procedure invert(array, size) that uses swap (defined in the previous exercise) to reverse an array in memory.

#The following C code implements invert (convert it to RISC-V):

#		void invert(int[] array, int size) {
#		    int i;
#		    for (i = 0; i < size/2; i++) {
#		        swap(array, i, size-i-1);
#		    }
#		}  

######################################################################################################

   
       
.globl _start
.data
    size:  .word 8
    array: .word 1,5,3,7,2,6,4,8
.text
_start:
    # chiama invert
    la   a0, array
    la   a1, size
    lw   a1, 0(a1)        
    jal  ra, invert
    
    #exit
    li   a7, 10
    ecall

##### function part #####    
                    
invert:                    
	addi sp, sp, -32
	sd ra, 0(sp)
	sd a0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	
	addi s1, zero, 0		#i = 0
	addi s2, a1, -1			#size- 1
loop_invert:
	blt s2, s1, end_invert
	
	 ld a0, 8(sp)
	 add a1, s1, zero
	 add a2, s2, zero
	 jal ra, swap
	 addi s1, s1, 1
	 addi s2, s2, -1
	 j loop_invert
end_invert:
	ld ra, 0(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret 
	                                     
	                                                                         
	                                                                                                             
	                                                                                                                                                 
	                                                                                                                                                                                     
	                                                                                                                                                                                                                                                             