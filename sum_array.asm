#Given a word in memory (variable size), followed by "size" integers in
#consecutive words (an array of words), write a RISC-V program that saves
#the sum of the array elements in a variable labeled result.


.globl _start
.data        
    size:   .word 16
    array:  .word 12, 2, 1, 3, 5, 1, 7, 1, -1, 4, -2, -3, 1, 9, -6, 10
    result: .word 0
    
.text
_start:
    