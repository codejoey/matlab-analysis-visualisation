
function [g] = g(x,kmax)
if nargin >= 2
    kmax=kmax;
elseif nargin==1
    kmax=100;
end
k=1;
A=0;
while k<=kmax && 1/(k^2)>=0.0001
    kterm=(-1)^(k+1)*1/k^2;
    A=A+kterm;
    k=k+1;
end
g=A*x;
end

