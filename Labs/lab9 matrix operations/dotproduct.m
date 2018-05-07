function [ result ] = dotproduct( P1,P2 )

elements= length(P1);
i=1;
result=0;

while i <= elements
    add= P1(i)*P2(i);
    result= result+add;
    i= i+1;
end

