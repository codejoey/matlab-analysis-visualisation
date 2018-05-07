sm = 0; % initialize accumulator variable
for a = 1 : 5000
    if rem(a,3)==0 && rem(a,7)~=0
        sm = sm + a;
    end
end