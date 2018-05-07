function [ Smax,Fmax,S,F ] = sharkfish( S0,F0,g,a,b,c,d )
%Joey Koh En Hai, 21506379
n=0;
S=[S0];
F=[F0];
ss= S0;
ff= F0;

while n ~= g-1
    ss= ss+ ((a*ss- b*ss*ff)/100);
    ff= ff+ ((c*ss*ff- d*ff)/100);
    S(end+1)= ss;
    F(end+1)= ff;
    n=n+1;
end
S
F
Smax= max(S)
Fmax= max(F)
end

