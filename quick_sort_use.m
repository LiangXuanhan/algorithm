
seed = 100;
rng(seed);
N = 10;
A = rand(1, N);
B = quick_sort(A, 1, length(A));