function B = counting_sort(A, p, r)
if p > r
    return;
end
if p == r
B = A;
end
B = zeros(1, length(A));
C = zeros(1, r - p + 1);
for i = 1 : length(A)
C(A(i) - p + 1) = C(A(i) - p + 1) + 1;
end
for i = 2 : length(C)
C(i) = C(i) + C(i - 1);
end
for i = 1 : length(A)
    B(C(A(i) - p + 1)) = A(i);
    C(A(i) - p + 1) = C(A(i) - p + 1) - 1;
end
end