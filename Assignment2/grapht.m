fullURL= ['http://teaching.csse.uwa.edu.au/units/CITS2401/drone.csv'];
data = csvread(urlwrite(fullURL,'cody1.csv'));
airspace.x= data(:,1);
%     airspace.y= data(:,2);
%     airspace.z= data(:,3);
%     airspace.radius= data(:,4);
L= length(airspace(1).x);
lL=L;
x= csvread('cody1.csv',0,0,[0 0 L-1 0]);
y= csvread('cody1.csv',0,1,[0 1 L-1 1]);
z= csvread('cody1.csv',0,2,[0 2 L-1 2]);
rds= csvread('cody1.csv',0,3,[0 3 L-1 3]);
lL=L;
lx=x;
ly=y;
lz=z;
lrds=rds;

subplot(1,2,1);
[X, Y, Z] = sphere;
for k = 1:lL
    XX = X * data(k, 4) + data(k, 1);
    YY = Y * data(k, 4) + data(k, 2);
    ZZ = Z * data(k, 4) + data(k, 3);
    surf(XX, YY, ZZ);
    hold on
end
%daspect([1 1 1])
title('Reference plot for area of coverage for all drones');
xlabel('Horizontal distance,x (in meters)');
ylabel('Vertical distance,y (in meters)');
zlabel('Height,z (in meters)');
grid off;
view(45,30);

subplot(1,2,2);
[X, Y, Z] = sphere;
for k = 1:lL
    XX = X * data(k, 4) + data(k, 1);
    YY = Y * data(k, 4) + data(k, 2);
    ZZ = Z * data(k, 4) + data(k, 3);
    surf(XX, YY, ZZ);
    hold on
end
%daspect([1 1 1])
title('Reference plot for area of coverage for all drones');
xlabel('Horizontal distance,x (in meters)');
ylabel('Vertical distance,y (in meters)');
zlabel('Height,z (in meters)');
grid off;
view(45,30);
