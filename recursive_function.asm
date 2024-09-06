#Using minarray(array, size) and the procedure swap(array, x, y)
#(which swaps the values of array[x] and array[y]), write a recursive function to sort an array of integers called selection_sort:

#The following C code implements the selection_sort function (convert it to RISC-V):


#		void selection_sort(int array[], int size) {
#		    if (size <= 1) 
#		        return;
    
#		    int min_idx = minarray(array, size);
#		    swap(array, 0, min_idx);
#		    selection_sort(array+1, size-1);
#		}  

###############################################################################################################