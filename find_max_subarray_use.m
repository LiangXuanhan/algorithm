N = 1000;
p = 0.5;
A = rand(1, N);
A = 100 * (A - p);
%%
[left, right, sum] = find_max_subarray(A, 1, N);