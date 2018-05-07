N= 7:7:1000
for ii= 2:6
    r= rem(N,ii) ~= 1 % find values of N that have remainder ~=1
    N(r)= []    % remove those values from N
end

%divisible (and) or is it (or)?