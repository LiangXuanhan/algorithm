seed = 100;
rng(seed);
N = 100;
A = rand(1, N);
B = bucket_sort(A, 0, 1);