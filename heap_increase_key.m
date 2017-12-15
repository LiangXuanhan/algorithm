function B = heap_increase_key(A, i, k)
if k < A(i)
return;
end
A(i) = k;
flag = 0;
while flag == 0
n = int8(parent(i));
p = A(n);
if p >= A(i)
flag = 1;
else
    A(n) = A(i);
    A(i) = p;
    i = n;
end
end
B = A;
end