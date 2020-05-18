function[x] = Mazurkiewicz_Marta_prostokaty(a,b,n)
func = @(x)2*x*x-3*x+1;
h = (b-a)/n;
x = zeros(n+1,1);
x(1) = a;
for(i=2:n+1)
x(i) = x(i-1)+h;
endfor
suma = 0;
for(i=1:n)
t = (x(i+1)+x(i))/2;
suma = suma+func(t); 
endfor
x = suma*h;
endfunction