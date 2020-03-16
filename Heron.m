function [ retval ] = Heron( a,epsilon )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
k = 1;
x = a;
y = 1000;
while abs(y-x)>epsilon
    x = y;
    y = 0.5*(x+a/x);
    k = k+1;
end
retval = y;
end

