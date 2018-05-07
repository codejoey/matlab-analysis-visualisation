function [result] = exponential_matrix(m)
R=0;
n=0;
while (m.^(n))./factorial(n)>0.01
    N= (m.^(n))./factorial(n);
    R=R+N;
    n=n+1;
    
end
result= R + (m.^(n))./factorial(n);

end