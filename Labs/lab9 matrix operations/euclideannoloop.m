function [ result ] = euclideannoloop( P1,P2 )

result1= (P2-P1).^2;
result2= sum(result1);
result= sqrt(result2);



end