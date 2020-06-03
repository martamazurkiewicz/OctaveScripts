function[x] = Mazurkiewicz_Marta_Krylow(A,b)
%argumenty wejsciowe:
%A = [2, -3, 1; -3, -4, -2; 1, -2, 4];
%b = [1;1;2];
n = length(b);
B = b;
for i = 1:n-1
  b = A*b;
  B = [b,B];
endfor
b = A*(-b);
x = B\b;
endfunction