function sA = merge(A, p, q, r)
sA = A;
n_1 = q - p + 1;
n_2 = r - q;
L = A(p : q);
R = A(q+1 :r);
ni = n_1;
nj = n_2;
for i = 1:(n_1 + n_2)
if L(1) <= R(1)
    sA(p + i - 1) = L(1);
    L = L(2 : end);
    ni = ni - 1;
    if ni == 0
    sA(p + i:r) = R;
    break;
    end
else
    sA(p + i - 1) = R(1);
    R = R(2 : end);
    nj = nj - 1;
if nj == 0
    sA(p + i:r) = L;
    break;
end
end
end