function [ tf ] = is_it_odd(n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
if mod(n,2)==1
    tf= true
elseif mod(n,2)==0
    tf= false

end

