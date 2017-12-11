N = 1000;
A = rand(1, N);
B = zeros(1, N);
for i = 1:length(B)
p = randi(length(A));
    B(i) = A(p);
    A(p) = [];
end
best = 0;
count = 0;
for i = 1:length(B)
if B(i) > best
best = B(i);
count = count + 1;

end

end
disp(best);
disp(count);
