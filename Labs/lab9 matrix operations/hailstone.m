function [ q1 ] = hailstone( n )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
q1=0;
while n~=1
    if mod(n,2)==0
        n=n/2;
        q1=q1+1;
    else
        n=3*n+1;
        q1=q1+1;
    end
end

end