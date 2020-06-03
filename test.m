clear;
clear all;
%A = [1,2;1,2;3,2;3,5];
%B = [1,2,3;1,4,4];
%MnozenieMacierzy(A,B);
%A = [9,11,12,6,4];
%c = 4;
%[ B,R ] = Horner(A,c);
%B = zeros(1,3)

%L = [1,0,0;2,3,0;2,3,4];
%b = [2,4,3];
%x = uklad_L(L,b);

%U = [2,4,4;0,2,3;0,0,1];
%b = [2,12,3];
%x = uklad_U(U,b);

%x = [-1,0,1,2];
%y = [4,-1,0,7];
%n = 2;
%x = [-1,2,5];
%y = [5,-4,-13];
%n = 1;
%[suma] = Mazurkiewicz_Marta_MNK(x,y,n);
%[a] = Mazurkiewicz_Marta_styczne(1,0.000001,@(x)(2*x^2-4*x+2));
%[a] = Mazurkiewicz_Marta_styczne(-pi/4,0.000001,@sin);
%[a] =Mazurkiewicz_Marta_sieczne(2,1,0.000001,@(x)(x^3-2*x^2-2));

% V w kolumnach wektory wlasne
%przykladowa macierz
A  = [2, -3, 2; -3, -4, -2; 1, -2, 4];
eig(A)
b = [1;1;1];
%poly(A)
[x] = Mazurkiewicz_Marta_metoda_potegowa(A,b,0.10)