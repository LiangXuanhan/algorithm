%if one element return
%divide into two
%find left biggest -recursion
%find right biggest-recursion
%find crossing biggest- function
%return
function [left, right, sum] = find_max_subarray(A, inleft, inright)
if inleft == inright
    sum = A(inleft);
    left = inleft;
    right = inright;
    return ;
end
mid = floor((inleft + inright) / 2);
[l_left, l_right, l_sum] = find_max_subarray(A, inleft, mid);
[r_left, r_right, r_sum] = find_max_subarray(A, mid + 1, inright);
[c_left, c_right, c_sum] = find_max_crossing_subarray(A, inleft, mid, inright);
if l_sum > r_sum && l_sum > c_sum
left = l_left;
right = l_right;
sum = l_sum;
return;
end
if r_sum > l_sum && r_sum > c_sum
left = r_left;
right = r_right;
sum = r_sum;
return;
end
if c_sum > l_sum && c_sum > r_sum
    left = c_left;
    right = c_right;
    sum = c_sum;
return;
end
end