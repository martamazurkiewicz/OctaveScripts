function[A] = Mazurkiewicz_Marta_metoda_potegowa1(A,eps)
n = length(A);
warunek = 2*eps;
while (warunek >= eps)
  warunek = 0;
  Q = zeros(n);
  for (i = 1:n)
    u = A(:,i);
    for (j = 1:i-1)
      u = u-dot(A(:,i),Q(:,j))*Q(:,j);
      warunek = warunek + abs(A(i,j));
    endfor
    Q(:,i) = u/norm(u);
  endfor
  R = transpose(Q) * A;
  A = R * Q;
endwhile
endfunction