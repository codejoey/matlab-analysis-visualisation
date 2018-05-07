%1
A=[12 3 9 13;5 6 -12 12; 7 10 32 0;-9 15 1 19];
B=A;
first= B(1,:);
last= B(end,:);
A(1,:)=last
A(end,:)= first

%2
firstcol= A(:,1);
thirdcol= A(:,3);
fifthcol= firstcol+thirdcol;
A(:,5)=fifthcol

%3
C=sum(A);
D=vectorize(C);
sumelements=sum(D)

%4
tmp1= A(2,4);
tmp2= A(4,1);
A(2,4)=tmp2

%5
B=diag(A)



