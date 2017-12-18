function [A,q] = partition_r(A, p, r)
i = p - 1;
y = randi([p r]);
key = A(r);
A(r) = A(y);
A(y) = key;
x = A(r);
for j = p : r - 1
if A(j) <= x
    i = i + 1;
    key = A(i);
    A(i) = A(j);
    A(j) = key;
    
end
end
key = A(r);
A(r) = A(i + 1);
A(i + 1) = key;
q = i + 1;
end