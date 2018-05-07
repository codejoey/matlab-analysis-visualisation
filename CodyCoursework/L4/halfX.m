function [ y ] = halfX( x )
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
if mod(x,2)==0
    y= x/2
elseif mod(x,2)==1
    y= (x+1)/2

end

