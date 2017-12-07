function C = square_matrix_multiply_strassen(A, B)
[m, n] = size(A);
if m == 1&& n ==1
C = A * B;
return
end
A_11 = A(1 : m / 2, 1 : n / 2);
A_12 = A(1 : m / 2, n / 2 + 1 : end);
A_21 = A(m / 2 + 1 : end, 1 : n / 2);
A_22 = A(m / 2 + 1 : end, n / 2 + 1 : end);
B_11 = B(1 : m / 2, 1 : n / 2);
B_12 = B(1 : m / 2, n / 2 + 1 : end);
B_21 = B(m / 2 + 1 : end, 1 : n / 2);
B_22 = B(m / 2 + 1 : end, n / 2 + 1 : end);
S1 = B_12 - B_22;
S2 = A_11 + A_12;
S3 = A_21 + A_22;
S4 = B_21 - B_11;
S5 = A_11 + A_22;
S6 = B_11 + B_22;
S7 = A_12 - A_22;
S8 = B_21 + B_22;
S9 = A_11 - A_21;
S10 = B_11 + B_12;
P1 = square_matrix_multiply_strassen(A_11, S1);
P2 = square_matrix_multiply_strassen(S2, B_22);
P3 = square_matrix_multiply_strassen(S3, B_11);
P4 = square_matrix_multiply_strassen(A_22, S4);
P5 = square_matrix_multiply_strassen(S5, S6);
P6 = square_matrix_multiply_strassen(S7, S8);
P7 = square_matrix_multiply_strassen(S9, S10);
C11 = P5 + P4 - P2 + P6;
C12 = P1 + P2;
C21 = P3 + P4;
C22 = P5 + P1 - P3 - P7;
C = [C11 C12; C21 C22];

end