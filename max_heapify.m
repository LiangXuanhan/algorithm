function B = max_heapify(A, l)
len = length(A);
left = -inf;
right = -inf;
flag = 0;
if (2 * l<= len)
    left = A(2 * l);
    if A(l) <= left;
        biggest = left;
    flag = 1;
    else
        biggest = A(l);
    end
else
     B = A;
    return;
    
end
if (2 * l + 1 <= len)
    right = A(2 * l + 1);
    if biggest <= right;
        biggest = right;
    flag = 2;
     key = A(l);
   A(l) = right;
   A(2 * l + 1) = key;
   B = max_heapify(A, (2 * l + 1));
    else
        if flag == 1
   key = A(l);
   A(l) = left;
   A(2 * l) = key;
   B = max_heapify(A, 2 * l);
   else
       B = A;
       return;
        end
    end
else
   if flag == 1
   key = A(l);
   A(l) = left;
   A(2 * l) = key;
   B = max_heapify(A, 2 * l);
   else
       B = A;
       return;
   end
end


