function [a] = Mazurkiewicz_Marta_MNK (x,y,n)
sumArray = zeros(3*n+1,1);
for k = 1:2*n
  for i = 1:length(x)
    sumArray(k) = sumArray(k)+x(i)^k;
  endfor;
endfor;
mnoznik = 0;
for k = 2*n+1:3*n+1
  for i = 1:length(x)
    sumArray(k) = sumArray(k)+y(i)*x(i)^mnoznik;
  endfor;
  mnoznik = mnoznik+1;
endfor;
%wstawianie wartosci do macierzy A
A = zeros(n+1);
A(1,1) = length(x);
mnoznik = 0;
for k = 1:n+1
  for i = 1:n+1
    if(k == 1)
      if(i != 1)
        A(k,i) = sumArray(i-k);
      endif;
    else
      A(k,i) = sumArray(k-1+mnoznik);
    endif;
    mnoznik = mnoznik+1;
  endfor;
  mnoznik = 0;
endfor;

%wektor res -> A*a=res
res = zeros(n+1,1);
for i = 1:n+1
  res(i) = sumArray(2*n+i);
endfor;

%rozklad cholesky'ego
L = zeros(n+1,n+1);
%i=columns, j=rows
for j = 1:n+1
  for i = 1:j
    if i==j
      L(i,i) = A(i,i);
      for k = 1:i-1
        L(i,i) = L(i,i)-L(i,k)^2;
      endfor;
      L(i,i) = sqrt(L(i,i));
    else;
      L(j,i) = A(j,i);
      for k = 1:i-1
        L(j,i) = L(j,i)-L(j,k)*L(i,k);
      endfor;
    L(j,i) = L(j,i)/L(i,i);
    endif;
  endfor;
endfor;

%macierz U (transponowana L)
U = L';

%A*a=y;
%L*U*a=y;
%x=U*a;
%L*b=y;
%U*a=x;
%[x] = uklad_L(L,y);
%[a] = uklad_U(U,x);

%uklad_L
b = zeros(1,n+1);
b(1) = res(1)/L(1,1);
for i = 2:n+1
  b(i) = res(i);
  for j = 1:i-1
    b(i) = b(i)-L(i,j)*b(j);
  endfor;
  b(i) = b(i)/L(i,i);
endfor;

%uklad U
a = zeros(1,n+1);
a(n+1) = b(n+1)/U(n+1,n+1);
for i = n:-1:1
  a(i) = b(i);
  for j = n+1:-1:i+1
    a(i) = a(i)-U(i,j)*a(j);
  endfor;
  a(i) = a(i)/U(i,i);
endfor;

args = x(1)-1:0.1:x(length(x))+1;
func = 0;
for i = 1:n+1
  func = func + a(i)*args.^(i-1);
endfor;
plot (args,func,x,y,'*');
xlabel("x");
ylabel("Wielomian");
endfunction;
