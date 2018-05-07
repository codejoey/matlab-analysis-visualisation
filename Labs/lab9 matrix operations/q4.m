R1=10;
R2=20;
R3=40;
V1=10;
V2=30;
% syms I J K
%syms I2;
%syms I3;
% 
% V1=R1*I+R3(I+J);
% V2=R2*J+R3(I+J);

M= [R1+R3,R3;R3,R2+R3]
det(M);
cond(M);

N=[V1;V2];
Xsolve=M\N