function result=ans_exponential_matrix(m)
n=0;
result=[0];

while m.^n/factorial(n)> 0.01
    new_term = m.^n/factorial(n);
    result = [result + new_term];
    n=n+1;
end
result = [result + m.^n/factorial(n)];

end

