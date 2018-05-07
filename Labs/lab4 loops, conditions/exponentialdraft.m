function [result] = exponential(x)
%UNTITLED27 Summary of this function goes here
%   Detailed explanation goes here
R=[]
for n= [0:6]
    N= (x^(n))/factorial(n)
    logic=(x^(n))/factorial(n) >0.01
    N(logic)
    R(end+1)= 
end
result= sum(N)

end

