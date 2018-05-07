function [ geometry ] = robotarm(theta1,theta2,L1,L2)
%UNTITLED3 Summary of this function goes here
%Detailed explanation goes here
%first arm
xa1= L1*cos(theta1);
ya1= L1*sin(theta1);

xb1= xa1+ L2*cos(theta1+theta2);
yb2= ya1+ L2*sin(theta1+theta2);

figure
plot([0 xa1 xb1],[0 ya1 yb2])
axis equal
axis([-6,6,-6,6])
title('Robot Arm Visualisation')
xlabel('x')
ylabel('y')
grid on


end

