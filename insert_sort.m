function B = insert_sort(A)
N = length(A);
for i = 1:N
key = A(i);
j = i - 1;
while (j > 0 && A(j) > key)
    A(j + 1) = A(j);
    j = j - 1;
    
end
A(j + 1) = key;
end
B = A;
end