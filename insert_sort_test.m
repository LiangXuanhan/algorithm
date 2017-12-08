N = 1000;
A = 1000 * rand(1, N);
for i = 1:N
key = A(i);
j = i - 1;
while (j > 0 && A(j) > key)
    A(j + 1) = A(j);
    j = j - 1;
    
end
A(j + 1) = key;
end
for i = 1:N
    hold on
plot([1:1000], A);
end