function[x] = Mazurkiewicz_Marta_Newton_wielowymiarowy(eps)
hold on;
fi = linspace(0,2*pi);
x1 = 3*sin(fi);
y1 = 3*cos(fi);
x2 = linspace(-5,5);
y2 = 2*x2.^2-3*x2+1;
plot(x1,y1,'r',x2,y2,'b');
ylim([-5 5]);

f1 = @(x,y)x*x+y*y-9;
f2 = @(x,y)2*x*x-3*x-y+1;
p1 = @(x)2*x;
p2 = @(y)2*y;
p3 = @(x)4*x-3;
p4 = -1;
%x = 2;
%y = 1; 
x = 0;
y = 1; 
w = [10;10];
while(norm(w)>eps)
f = [f1(x,y);f2(x,y)];
J = [p1(x),p2(y);p3(x),p4];
%det = J(1,1)*J(2,2)-J(1,2)*J(2,1);
%invJ = [J(2,2),-J(1,2);-J(2,1),J(1,1)]/det;
invJ = inv(J);
iloczyn = invJ*f;
x1 = x - iloczyn(1);
y1 = y - iloczyn(2);
w = [x1-x, y1-y];
x = x1;
y = y1;
plot(x,y,'d');
endwhile;
hold off;
x = [x,y];
endfunction;