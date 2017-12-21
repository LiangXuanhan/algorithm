seed = 10;
rng(seed);
N = 100;
A = rand(1, N);
[max, min] = findminmax(A);
B = bucket_sort(A, 0, 1);