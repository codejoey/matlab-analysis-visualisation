function [Nmax,yrs,N] = logisticGrowthdraft(N0,K,r)
N1= r*N0*(1-(N0/K));
N1= round(N1); %rounds and shows

N2= r*N1*(1-(N1/K));
N2= round(N2); %rounds and shows
NH=N2;

N3= r*N2*(1-(N2/K));
N3= round(N3); %rounds and shows
yrs=3;

N= [N1,N2,N3];

while N3~=NH
    NH=N3;
    N3= r*N3*(1-(N3/K));
    N3= round(N3); %rounds and shows
    yrs=yrs+1;
    N(end+1)=N3;
end

if N3==NH
    Nmax=max(N)
    yrs=yrs
    N=N
end
