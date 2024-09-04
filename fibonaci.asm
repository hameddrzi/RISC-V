# Convert the following C function into RISC-V
# It calculates the Nth Fibonacci number
#
#   int N = 8;
#   int R = 1;
#   int A = 0; int B = 1;
#   while (N > 0) {
#       R = A + B;
#       A = B;
#       B = R;
#       N = N - 1;
#   }
#

	