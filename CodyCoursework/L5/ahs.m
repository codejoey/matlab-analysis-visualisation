function [ ln2 ] = ahs( n )

if n== 0
    ln2= log(2);
end

ln2= 1;
term= 2;
denom= 2;
correct= log(2);
N= abs(ln2- correct);

while N > n
    while mod(term,2)==1
        ln2= ln2 +1/denom;
        term= term +1;
        denom= denom +1;
        N= abs(ln2- correct);
    end
    while mod(term,2)==0
        ln2= ln2 -1/denom;
        term= term +1;
        denom= denom +1;
        N= abs(ln2- correct);
    end
end


