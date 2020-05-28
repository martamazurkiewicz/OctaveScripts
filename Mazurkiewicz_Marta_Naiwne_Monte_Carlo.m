function[x] = Mazurkiewicz_Marta_Naiwne_Monte_Carlo(a,b,n)
%rand(1,n)-wektor losowych liczb
Z = rand(1,n);
X = a+(b-a)*Z;
func = (b-a)*sum(sin(X))/n;
x = func;
endfunction;

