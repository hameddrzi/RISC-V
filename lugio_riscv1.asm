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
	