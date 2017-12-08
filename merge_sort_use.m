seed = 1;
rng(seed);
N = 80;
A = 1000 * rand(1, N);
A = merge_sort(A, 1, N);