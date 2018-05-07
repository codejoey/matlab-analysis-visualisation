% Lab Test 1 Tuesday  
% Q1.1
first = A(1,:);
A(1,:) = A(end,:);
A(end,:) = first;

%Q1.2
A(:,5) = A(:,1) + A(:,3);

%Q1.3
s = sum(A(:));

%Q1.4
A(2,4) = A(4,1);

%Q1.5
B = diag(A);