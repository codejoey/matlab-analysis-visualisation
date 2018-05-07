function [result] = exponential(x)
%UNTITLED27 Summary of this function goes here
%   Detailed explanation goes here
R=0;
%for n= [0:6]
n=0;
while (x^(n))/factorial(n)>0.01
    N= (x^(n))/factorial(n);
    R=R+N;
    n=n+1;
    %logic=(x^(n))/factorial(n) >0.01
    %N(logic)
    %R(end+1)= 
end
result= R + (x^(n))/factorial(n);

end

