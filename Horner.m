function [ B,R ] = Horner( A,c )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
%dlugosc wielomianu
n = length(A); 
B = zeros(1,n-1);
B(n-1) = A(n);
n = n-1;
for i = n:-1:2
    B(i-1) = A(i)+c*B(i);
endfor
R = c*B(1)+A(1);
end

