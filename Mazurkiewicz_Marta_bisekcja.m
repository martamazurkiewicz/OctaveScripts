function[x] = Mazurkiewicz_Marta_bisekcja(a,b,eps,func)
%funkcja musi zmieniac znak na przedziale a,b -> f(a)*f(b)<0;
while(b-a>eps)
  c = (a+b)/2;
  if(func(c)==0)
    x = c;
    return;
  else
    if(func(a)*func(c)<0)
      b = c;
    else
      a = c;
    endif;
  endif;
endwhile;
x = a;
endfunction;