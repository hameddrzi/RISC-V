#######################################################################################3
		#void caesar_encrypt(char *str) {
    		#int i = 0;
    		#while (str[i] != '\0') {
        		#if (str[i] >= 'a' && str[i] <= 'z') {
            		#str[i] = 'a' + (str[i] - 'a' + 23) % 26;
        		#} 
        		#i++;
    		#}
	#}
#######################################################################################

    .globl _start
    .data
        str: .string ".abcdefghijklmnopqrstuvwxyz!"
        
    .text
    _start:
        # chiama caesar_encrypt
        la   a0, str
        jal  ra, caesar_encrypt

        # exit
        li   a7, 10
        ecall

    #******************************************************
    # completa la funzione caesar_encrypt nel campo sottostante
caesar_encrypt:
	li t0, 0		#i = 0
	
for_loop:
	add t1, t0, a0
	lbu t2, 0(t1)
	beq t2, zero, end1
	
	li t3, 'a'
	blt t2, t3, next1
	li t3, 'z'
	bgt t2, t3, next1
	
	li t3, 'a'
	li t4, 26
	sub t2, t2, t3
	addi t2, t2, 23
	rem t2, t2, t4
	add t2, t2, t3
	
next1:
	sb t2, 0(t1)
	addi t0, t0, 1
	j for_loop
end1:
	#mv a0, t1
	ret