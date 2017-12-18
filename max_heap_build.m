function B = max_heap_build(A)
D = A;
n = length(A);
s = floor(n / 2);
for i = s : -1 : 1
D = max_heapify(D, i);
end
B = D;
end