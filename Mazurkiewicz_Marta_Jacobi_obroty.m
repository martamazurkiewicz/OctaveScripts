function x = Mazurkiewicz_Marta_Jacobi_obroty(A, eps)
n = length(A);
warunek = 2*eps;
while (warunek > eps)
  warunek = 0;
  p = 0;
  q = 0;
  max = -inf;
  for (i=1:n)
    for (j=1:n)
      if (i != j)
        warunek = warunek + abs(A(i,j));
        if (abs(A(i,j)) > max)
          max = abs(A(i,j));
          p = j;
          q = i;
        endif
      endif
    endfor
  endfor
  if (A(p,p) == A(q,q))
    theta = pi/4;
  else
    tan2theta = (2*A(p,q))/(A(p,p)-A(q,q));
    theta = atan(tan2theta)/2;
  endif
  T = eye(n);
  T(p,p) = cos(theta);
  T(p,q) = sin(theta);
  T(q,p) = -sin(theta);
  T(q,q) = cos(theta);
  Tinv = T;
  Tinv(q,p) = Tinv(q,p)*(-1);
  Tinv(p,q) = Tinv(p,q)*(-1);
  A = Tinv * A * T;
endwhile
x = diag(A);
endfunction