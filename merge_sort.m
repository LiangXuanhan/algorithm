function sA = merge_sort(A, p, r)
if p < r
    q = floor((r + p) / 2);
    lA = merge_sort(A, p, q);
    rA = merge_sort(A, q + 1, r);
    A(p : q) = lA(p : q);
    A(q + 1 : r) = rA(q + 1 : r);
    sA = merge(A, p, q, r);
else
    sA = A;
end
end