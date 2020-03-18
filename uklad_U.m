function [x] = uklad_U (U, b)
  n = length(b);
  x = zeros(1,n);
  x(n) = b(n)/U(n,n);
  for i = n-1:-1:1
    x(i) = b(i);
    for j = n:-1:i+1
      x(i) = x(i)-U(i,j)*x(j);
    endfor
    x(i) = x(i)/U(i,i);
  endfor
endfunction