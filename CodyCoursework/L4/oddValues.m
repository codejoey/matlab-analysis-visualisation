function [ y ] = oddValues(x)
%UNTITLED16 Summary of this function goes here
%   Detailed explanation goes here
L= logical(mod(x,2));
y= x(L);
if max(L)== 0
    y= [];
end

