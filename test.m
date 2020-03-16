clear;
clear all;
%A = [1,2;1,2;3,2;3,5];
%B = [1,2,3;1,4,4];
%MnozenieMacierzy(A,B);
A = [9,11,12,6,4];
c = 4;
[ B,R ] = Horner(A,c);
B
R
%B = zeros(1,3)