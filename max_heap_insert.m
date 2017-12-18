function B = max_heap_insert(A, key)
D = [A -inf];
n = length(D);
B = heap_increase_key(D, n, key);

end