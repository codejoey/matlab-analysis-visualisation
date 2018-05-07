function [ z ] = staircase(a,b,h,n)
t=[0:pi/20:2*pi*n];
r=(a.*b.*exp(-0.04.*t))./(sqrt((b.*cos(t)).^2+(a.*sin(t)).^2));

x= r.*cos(t);
y= r.*sin(t);
z= (h.*t)./(2.*pi.*n);

plot3(x,y,z)
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
end

%need to fix r equation, make a vector of values