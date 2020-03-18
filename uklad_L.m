function [x] = uklad_L (L, b)
  n = length(b);
  x = zeros(1,n);
  x(1) = b(1)/L(1,1);
  for i = 2:n
    x(i) = b(i);
    for j = 1:i-1
      x(i) = x(i)-L(i,j)*x(j);
    endfor
    x(i) = x(i)/L(i,i);
  endfor
endfunction
