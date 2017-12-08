seed = 1;
rng(seed);
N = 80;
A = 1000 * rand(1, N);
for i = 1:N
    for j = N:-1:i + 1
        while A(j) < A(j - 1)
            key = A(j - 1);
            A(j - 1) = A(j);
            A(j) = key;
        end
    end
end