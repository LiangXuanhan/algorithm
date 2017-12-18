function A = quick_sort(A, p, r)
if p >= r
    return;
end
    [A,q] = partition(A, p, r);
    A = quick_sort(A, p, q - 1);
    A = quick_sort(A, q + 1, r);

end