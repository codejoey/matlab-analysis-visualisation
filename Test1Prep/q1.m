%question 1

%a
x=10;
y=16;
temp= x;
temp2= y;
x=temp2;
y=temp;

%b
A=[1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16];
bans= A(:,2);

%c
B=[1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16];
cans= B(end,:);

%d
4+6 < 7+2;
%outcome: "ans= logical 0 (false)"

%e
a=mean(rand(1, 1e6));
%ans= 0.5;

%f
[2,5,7,9] <5 ;
% fans =
% 
%   1×4 logical array
% 
%    1   0   0   0

%g
%gans: Stops loop and begins running from end of loop function.

%h
%hans: functions have their own variable space.

