function B = heap_increase_key(A, i, k)
D = A;
if k < D(i)
return;
end
D(i) = k;
flag = 0;
while flag == 0
n = int8(parent(i));
p = D(n);
if p >= D(i)
flag = 1;
else
    D(n) = D(i);
    D(i) = p;
    i = n;
end
end
B = D;
end