x= 0:5;
y= [15, 10, 9, 6, 2,0];

newx= 0:0.2:5;
newy= interp1(x,y,newx,'spline');

plot(x,y,'-ro',newx,newy,':b*');
axis([-1,6,-1,16]);
title('Cubic Spline Interpolation');
xlabel('x axis'),ylabel('y axis');
