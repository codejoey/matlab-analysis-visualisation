vec=[1 2 3 5];
sum=0;

while length(vec)>0
    sum= sum + vec(1);
    vec(1)= [];
end