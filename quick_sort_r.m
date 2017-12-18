function A = quick_sort_r(A, p, r)
if p >= r
    return;
end
    [A,q] = partition_r(A, p, r);
    A = quick_sort(A, p, q - 1);
    A = quick_sort(A, q + 1, r);

end