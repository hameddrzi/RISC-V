##############################################################################
		#// int (in C) è equivalente a word (in RISC-V)
		#// short (in C) è equivalente a half (in RISC-V)
		#int ones_arr(short arr1[], short arr2[], int pos) {
		#    return countones(arr1[pos]) * countones(arr2[pos]);
		#}
##############################################################################

.globl _start
.data
    arr1: .half -129, 127, 128, 127, -128, 127, 128, 127
    arr2: .half 127, 128, 127, -128, 127, 128, 127, -129
    pos:  .word 7
    
.text
_start:
    # chiama ones_arr
    la   a0, arr1
    la   a1, arr2
    la   a2, pos 
    lw   a2, 0(a2)
    jal  ra, ones_arr

    # exit
    li   a7, 10
    ecall

#******************************************************
# Procedure countones(n)
# a0 -> N
# a0 -> ritorna il conteggio dei bit impostati a 1
#******************************************************
countones:
        li a1, 0
    ca: beqz a0, cb
        andi t0, a0, 1
        add  a1, a1, t0
        srli a0, a0, 1
        j ca
    cb: mv a0, a1
        ret

#******************************************************
# completa la funzione ones_arr nel campo sottostante