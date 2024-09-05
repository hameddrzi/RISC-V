#Write a RISC-V procedure strcmp to compare two character strings.
#strcmp(str1, str2) returns 0 if str1 is equal to str2, 1 otherwise.

#############################################################################


.globl _start
.data
    str1: .string  "first."
    str2: .string  "second."
.text
_start:
    # call strcmp
    la   a0, str1
    la   a1, str2
    jal  ra, strcmp

    #exit
    li   a7, 10
    ecall