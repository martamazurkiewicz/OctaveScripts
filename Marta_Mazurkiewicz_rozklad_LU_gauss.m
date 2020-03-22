function [L,A] = Marta_Mazurkiewicz_rozklad_LU_gauss(A)
  %first row stays the same
  n = length(A);
  L = eye(n,n);
  %wiersz
  for i = 2:n
    for k = 1:i-1
    L(i,k) = A(i,k)/A(k,k);
    %kolumna
      for j = 1:n
        A(i,j) = A(i,j)-L(i,k)*A(k,j);
      endfor 
    endfor
  endfor
endfunction
