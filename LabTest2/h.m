function [h] = h(x,kmax)
switch nargin
    case 2
        kmax=kmax;
    case 1
        kmax=100;
end
k=1;
A=0;
count=0;

while k<=kmax && 1/(k^2)>=0.0001 %change k<=kmax to allow k=100 term to run
    kterm=(-1)^(k+1)*1/k^2;
    A=A+kterm;
    k=k+1;
    count=count+1;
end
count
h=A*x;

end

