function[x] = Mazurkiewicz_Marta_metoda_potegowa(A,z,eps)
n = length(z);
zNorm = z/norm(z);

if n == 3
  plot3(zNorm(1),zNorm(2),zNorm(3),'o');
endif;
if n == 2
  plot(zNorm(1),zNorm(2),'o');
endif;
hold on;

warunek = 2*eps;
while warunek>=eps
  zNormPrev = zNorm;
  zNorm = A*zNorm;
  zNorm = zNorm/norm(zNorm);
  warunek = norm(zNorm-zNormPrev);
if n == 3
  plot3(zNorm(1),zNorm(2),zNorm(3),'o');
endif;
if n == 2
  plot(zNorm(1),zNorm(2),'o');
endif;
endwhile;

hold off;
x = dot(transpose(zNorm)*A,zNorm)/(transpose(zNorm)*zNorm);
endfunction;