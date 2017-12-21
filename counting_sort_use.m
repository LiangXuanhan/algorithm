seed = 100;
rng(seed);
N = 100;
imin = 1;
imax = 1000;
A = randi(imax, 1, N);
B = counting_sort(A, imin, imax);