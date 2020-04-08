function [y] = Mazurkiewicz_Marta_Lagrange(xw,yw,x)

n = length(xw);
pi = 1;
y = 0;
for i=1:n
  for j=1:n
    if j != i
      pi = pi*((x - xw(j))/(xw(i)-xw(j)));
    endif
  endfor
  y = y+pi*yw(i);
  pi=1;
endfor
endfunction