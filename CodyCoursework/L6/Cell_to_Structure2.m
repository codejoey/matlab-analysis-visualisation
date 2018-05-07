function [ y ] = Cell_to_Structure2( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n= numel(x);
s=[];
value= 'v'
s= setfield(s,x{1:2:n-1},'field',{2:2:n},value)
y=struct(s)

end

