function[x] = Mazurkiewicz_Marta_Simpson(a,b,n)
func = @(x)2*x*x-3*x+1;
h = (b-a)/n;
x = zeros(n+1,1);
x(1) = a;
for(i=2:n+1)
x(i) = x(i-1)+h;
endfor
suma4 = 0;
suma2 = 0;
for(i=2:n/2+1)
suma4 = suma4+func(x(2*i-1));
suma2 = suma2+func(x(2*i));
endfor
suma = (func(a)+4*suma4+2*suma2+func(b))*(h/3);
x = suma;
endfunction