function [ ln2 ] = ahsterm( n )
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
ln2= 0;
term= 1;
denom= 1;
if n== 0
    ln2= 0;
end
while term <= n
    while mod(term,2)==1
        ln2= ln2+ 1/denom;
        term= term +1;
        denom= denom +1;
    end
    while mod(term,2)==0
        ln2= ln2 -1/denom;
        term= term +1;
        denom= denom +1;
    end

end


