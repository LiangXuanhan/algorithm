function [extrt_max, D] = heap_extract_max(A)
D = A;
if length(D) < 1
    return;
end
extrt_max = D(1);
D(1) = D(end);
D = D(1 : end - 1);
max_heapify(D, 1);


end