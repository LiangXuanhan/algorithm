function B = max_heap_build(A)
n = length(A);
s = floor(n / 2);
for i = s : -1 : 1
A = max_heapify(A, i);
end
B = A;
end