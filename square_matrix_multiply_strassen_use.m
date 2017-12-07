N = 1;
A = rand(2 ^ N);
B = rand(2 ^ N);
% A = [0 0; 1 1];
% B = [1 1; 1 1];
C = square_matrix_multiply_strassen(A, B);
