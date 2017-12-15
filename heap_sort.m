function B = heap_sort(A)

M = max_heap_build(A);
n = length(M);
l = n;
B = zeros(1, n);
for i = n:-1:2
B(i) = M(1);
M(1) = M(end);
M = M(1 : end - 1);
M = max_heapify(M, 1);
end
B(1) = M(1);
end