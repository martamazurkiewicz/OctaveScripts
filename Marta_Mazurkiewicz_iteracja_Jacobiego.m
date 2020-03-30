function[x] = Marta_Mazurkiewicz_iteracja_Jacobiego(A,b)

%1. sprawdzenie czy macierz jest diagonalnie dominujaca
n = length(A);
suma = 0;
czyJestDominujaca = 1;
for i = 1:n
  for j = 1:n
    if j != i
      suma = suma+abs(A(i,j));
    endif
  endfor
  if abs(A(i,i)) < suma
    czyJestDominujaca = 0;
  endif
  suma = 0;
endfor

%2. Obliczenie wektora x zalaznie od k
x = zeros(1,n);
if czyJestDominujaca == 1
xk = zeros(1,n);
for k = 1:20
  for i = 1:n
    for j = 1:n
      if j != i
      suma = suma+A(i,j)*x(j);
      endif
    endfor
    xk(i) = (b(i)-suma)/A(i,i);
    suma = 0;
  endfor
  x = xk;
endfor
endif
endfunction