function[x] = Mazurkiewicz_Marta_trapezy(a,b,n)
func = @(x)2*x*x-3*x+1;
h = (b-a)/n;
x = zeros(n+1,1);
x(1) = a;
for(i=2:n+1)
x(i) = x(i-1)+h;
endfor
suma = 0;
for(i=1:n)
trapez = (func(x(i))+func(x(i+1)))*h/2;
suma = suma+trapez; 
endfor
x = suma;
endfunction