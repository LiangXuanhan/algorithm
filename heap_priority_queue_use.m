seed = 100;
rng(seed);
N = 10;
A = rand(1, N);
B = max_heap_build(A);
C = heap_sort(A);
max = heap_maximum(B);
[e_max, D] = heap_extract_max(B);
E = heap_increase_key(A, 10, 2);
F = max_
