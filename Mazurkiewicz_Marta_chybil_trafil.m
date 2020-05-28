function[x] = Mazurkiewicz_Marta_chybil_trafil(a,b,n)
%If you want to generate n random numbers from a to b, use the following formula:
X = a + (b-a)*rand(1,n);
minimum = min(sin(X));
maximum = max(sin(X));
Y = minimum + (maximum-minimum)*rand(1,n);
k = 0;
hold on;
args = linspace(a,b);
plot(args,sin(args),"m");
for i=1:n
  if(sin(X(i))>=0)
    if(sin(X(i))>=Y(i) && Y(i)>0)
      k = k+1;
      plot(X(i),Y(i),"og");
    else
      plot(X(i),Y(i),"ob");
    endif;
  else
    if(sin(X(i))<Y(i) && Y(i)<0)
      k=k-1;
      plot(X(i),Y(i),"or");
    else
      plot(X(i),Y(i),"ob");
    endif;
  endif;
endfor;
hold off;
x = k/n*(b-a)*(maximum-minimum);
endfunction;