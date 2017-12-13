
% seed = 1;
% rng(seed);
N = 1000;
A = 100 * rand(1, N);
A(1) = 1;
B = max_heapify(A, 1);