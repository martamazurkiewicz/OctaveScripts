function[x] = Mazurkiewicz_Marta_styczne(x,eps,func)
pkg load optim;
while(func(x)>eps || func(x)<-eps)
  x = x - func(x)/deriv(func,x);
endwhile;
endfunction;