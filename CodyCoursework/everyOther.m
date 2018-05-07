function [y] = everyOther(x)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
n= numel(x);
a= [1:n];
L= logical(mod(a,2));
y= x(L)

end



