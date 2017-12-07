function [left, right, sum] = find_max_crossing_subarray(A, inleft, inmid, inright)
left_sum = -inf;
right_sum = -inf;
lsum = 0;
rsum = 0;
for i = inmid: -1 :inleft
    lsum = lsum + A(i);
    if lsum > left_sum
        left_sum = lsum;
        left = i;
    end

end
for i = inmid + 1: 1 :inright 
rsum = rsum + A(i);
if rsum > right_sum
    right_sum = rsum;
    right = i;
end
sum = left_sum + right_sum;
end