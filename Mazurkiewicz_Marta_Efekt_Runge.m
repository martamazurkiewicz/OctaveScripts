function [a] = Mazurkiewicz_Marta_Efekt_Runge(k)
figure(1);
title('Wielomiany');
hold on;
x = linspace(-1,1);
y = abs(x);
plot(x,y);
xlim([-1 1]);
ylim([-1 4]);
xlabel('x');
ylabel('y');

for n = 2:2:2*k
krok = 2/n;
nodex = -1:krok:1;
nodey = abs(nodex);
[a] = Mazurkiewicz_Marta_MNK(nodex,nodey,n);
a = fliplr(a);
poly = polyval(a,x);
plot (x,poly,nodex,nodey,'o');
endfor;
hold off;

figure(2);
title('Analiza bledu interpolacji');
hold on;
xlabel('x');
ylabel('f(|x|)-w(x)');
for n = 2:2:2*k
krok = 2/n;
nodex = -1:krok:1;
nodey = abs(nodex);
[a] = Mazurkiewicz_Marta_MNK(nodex,nodey,n);
a = fliplr(a);
poly = polyval(a,x);
legenda = ['n = ', num2str(n)];
plot(x,y-poly,'DisplayName',legenda);
endfor;
hold off;
legend show;
endfunction;