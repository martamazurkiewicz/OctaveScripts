function[x] = Mazurkiewicz_Marta_Pole_kola(r,n)
%x^2+y^2=r^2
%funkcja okreslajaca II cwiartke kola o srodku w (0,0)
%czyli a=0, b=r
%y jest zawsze nieujemne
%minimum = a = 0;
%maximum = r
func = @(x,r)sqrt(r*r-x*x);
k = 0;
X = r*rand(1,n);
Y = r*rand(1,n);
for i=1:n
  if(func(X(i),r)>=0)
    if(func(X(i),r)>=Y(i) && Y(i)>0)
      k = k+1;
    endif;
  else
    if(func(X(i),r)<Y(i) && Y(i)<0)
      k=k-1;
    endif;
  endif;
endfor;
x = 4*k*r*r/n;
endfunction