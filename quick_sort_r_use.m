
seed = 100;
rng(seed);
N = 100;
A = rand(1, N);
B = quick_sort_r(A, 1, length(A));