wynik = [];
x = 10;
delta = 1;
for i=1:55
   iloraz = (exp(x+delta)-exp(x))/delta;
   wynik = [wynik;i,delta,iloraz,exp(x)];
   delta = delta/2;
end
format long;
wynik