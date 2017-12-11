N = 1000;
A = rand(1, N);
best = 0;
count = 0;
for i = 1:length(A)
if A(i) > best
best = A(i);
count = count + 1;

end

end
disp(best);
disp(count);

