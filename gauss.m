function [A,b] = gauss (A, b)
  %first row stays the same
  n = length(b);
  %wiersz
  for i = 2:n
    for k = 1:i-1
    multiplier = A(i,k)/A(k,k)
    %kolumna
    for j = 1:n
      A(i,j) = A(i,j)-multiplier*A(k,j);
    endfor
    b(i) = b(i)-multiplier*b(k); 
    endfor
  endfor
endfunction
