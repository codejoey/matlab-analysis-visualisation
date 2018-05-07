function y= pascalTriangle(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A = pascal(n+1);
B= diag(fliplr(A));
y=B.'

end

