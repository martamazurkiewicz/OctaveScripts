function[L] = Marta_Mazurkiewicz_rozklad_cholesky(A)
n = length(A);
L = zeros(n,n);
%i=columns, j=rows
for j = 1:n
  for i = 1:j
    if i==j
      L(i,i) = A(i,i);
      for k = 1:i-1
        L(i,i) = L(i,i)-L(i,k)^2;
      endfor
      L(i,i) = sqrt(L(i,i));
    else
      L(j,i) = A(j,i);
      for k = 1:i-1
        L(j,i) = L(j,i)-L(j,k)*L(i,k);
      endfor
    L(j,i) = L(j,i)/L(i,i);
    endif
  endfor
endfor
endfunction