ctrl+c to stop
Y=round(x)

while N2~=N3
    N3= r*N1*(1-(N1/K));
    N2= round(N2);
    disp(N2)
    yrcount=yrcount + 1
end

if N1==N2
   Nmax=N2
   disp(yrcount)

        % Ni+1 = r*Ni*(1-(Ni/K))
        
        %outputs
        %  Nmax=
        %  yrs=
        %  N=[  ]
end