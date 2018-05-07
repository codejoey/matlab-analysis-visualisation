function [Smax,Fmax,S,F] = sharkfish(S0,F0,g,a,b,c,d)
% Lab Test 1 Tuesday  
S(1) = S0;
F(1) = F0;

for ii = 2:1:g
    S(ii) = S(ii-1) + (a*S(ii-1) - b * S(ii-1)*F(ii-1))/100;
    F(ii) = F(ii-1) + (c*S(ii-1)*F(ii-1) - d * F(ii-1))/100;
       
end
Smax = max(S)
Fmax = max(F)


plot(1:g,S,1:g,F)

