function [ result ] = euclidean( P1,P2 )

elements= length(P1);
i=1;
result=0;

while i <= elements
    add= (P2(i)-P1(i))^2;
    result= result+add;
    i= i+1;
end

result= sqrt(result)
