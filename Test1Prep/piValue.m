function [ output ] = piValue(n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
output= 4;
denom= 3;
N=2;

if n== 0;
    output= 0;
elseif n== 1;
    output= 4;
    
elseif n >= 2;
    while N<=n
        while mod(N,2)== 1
            output= output + 4/denom;
            denom= denom + 2;
            N= N+1;
        end
        while mod(N,2)==0
            output= output - 4/denom;
            denom= denom + 2;
            N= N+1;
        end
    end
end

