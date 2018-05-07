function [ x ] = oddFive(v)
%UNTITLED21 Summary of this function goes here
%   Detailed explanation goes here
L= logical(mod(v,5)==0)
v= v(L)
L= logical(mod(v,2)==1)
idx= find(L,1)
x= v(idx)
end

