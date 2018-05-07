A=[1 2 3 4;5 6 7 8;9 10 11 12];
B=A(:,1:2:3);% make new matrix B from A. From all rows of A
% with columns starting at 1st column, skip 2, end at 3rd column.
C=A(:,2:2:4);
D=B+C