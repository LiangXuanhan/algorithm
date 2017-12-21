function [maxp, minp] = findminmax(A)
n = length(A);
if mod(n, 2) == 0
    mi_s = min(A(1), A(2));
    ma_s = max(A(1), A(2));
    for i = 1 : n / 2
        mi = min(A(2 * i), A(2 * i - 1));
        ma = max(A(2 * i), A(2 * i - 1));
        mi_s = min(mi, mi_s);
        ma_s = max(ma, ma_s);
        

    end
else
    mi_s = A(1);
    ma_s = A(1);
    for i = 1 : (n - 1) / 2
        mi = min(A(2 * i), A(2 * i + 1));
        ma = max(A(2 * i), A(2 * i + 1));
        mi_s = min(mi, mi_s);
        ma_s = max(ma, ma_s);
    end
end
maxp = ma_s;
minp = mi_s;
end