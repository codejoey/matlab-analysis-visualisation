V= 1:1000;% create a vector from 1 to 1000 values and assign it to 'V'
for d= [3,5,7]% loop through integers 3, 5, 7 using loop variable 'd'
    a= logical(rem(V,d)) % find the remainder of 'V' after dividing by 'd'
                         %and convert to logical values (non-zero
                         %remainders are true, the ones divisible by 3,5 or
                         %7 are FALSE.
    V= V(a)% use the logical indexes 'a' 
            %to keep ONLY the True (not div by d) values from 'V'
end