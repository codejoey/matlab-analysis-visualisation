function [Nmax,yrs,N] = logisticGrowth(N0,K,r)
N1= r*N0*(1-(N0/K));
N1= round(N1); %rounds and shows
NH=N1;

N2= r*N1*(1-(N1/K));
N2= round(N2); %rounds and shows
yrs=2;

N= [N1,N2];

while N2~=NH
    NH=N2;
    N2= r*N2*(1-(N2/K));
    N2= round(N2); %rounds and shows
    yrs=yrs+1;
    N(end+1)=N2;
end

if N2==NH
    Nmax=max(N)
    yrs=yrs
    N=N
end

%logisticGrowth(100,200,1.5)