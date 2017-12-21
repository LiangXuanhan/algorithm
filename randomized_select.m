function s = randomized_select(A, p, r, i)
if p == r
    s = A(p);
return;
end
[A,q] = partition_r(A, p, r);
k = q - p + 1;
if k ==i
    s = A(q);
return;
end
if k > i
s = randomized_select(A, p, q - 1, i);
end
if k < i
s = randomized_select(A, q + 1, r, i - k);
end
end