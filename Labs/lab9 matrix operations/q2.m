A= csvread('chemicalCompound.csv',1,1);
%B= csvread('chemicalCompound.csv',0,0)
X= [5;2;4;1.5;0.5];
B=A*X;

%X= inv(A)*B
X= A\B
%Z= B/A

B1= [1.0729;0.2222;3.3137;8.3019];
X1= A\B1

B2= [0.9712;0.1486;2.1316;7.831];
X2= A\B2

B3= [0.9791;0.3341;5.7843;4.1841];
X3= A\B3

cond(A,2)