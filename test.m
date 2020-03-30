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

A= [4,-1,-1,0;-1,4,0,-1;-1,0,4,-1;0,-1,-1,4];
A
b = [-1,2,0,1];
b
[x] = Marta_Mazurkiewicz_iteracja_Jacobiego(A,b);
x