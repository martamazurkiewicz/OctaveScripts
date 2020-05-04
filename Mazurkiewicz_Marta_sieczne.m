function[x] = Mazurkiewicz_Marta_sieczne(x1,x2,eps,func)
while(func(x2)>eps || func(x2)<-eps)
  x = x2 - (x2-x1)/(func(x2)-func(x1))*func(x2);
  x1 = x2;
  x2 = x;
endwhile;
endfunction;