function B = bucket_sort(A, s, b)
m = b - s;
n = length(A);
C = cell(1, n);
for i = 1 : n
    j = floor(n * A(i)) + 1;
    C{j}= [C{j} A(i)];
end
B = [];
for i = 1 : n
C{i} = insert_sort(C{i});
B = [B C{i}];
end
end