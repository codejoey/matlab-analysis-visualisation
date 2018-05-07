figure
subplot(1,2,1)
sphere
axis equal
rotate3d

subplot(1,2,2)
cylinder
axis equal
rotate3d

figure
%subplot(2,2,3)
[x,y]= meshgrid(-2:0.1:2, -2:0.2:2); %generate matrices x and y
z= x.^2+y.^2;   %calc z at each x and y positioin, note .^ operation
surf(x,y,z);    %3D plot of z over x and y
axis equal
rotate3d
colormap('copper')  %change colour map
shading flat        %remove gridlines

figure
%subplot(2,2,4)
[x,y]= meshgrid(-4:0.1:4, -4:0.1:4);
z= exp(-((x.^2+y.^2)./4)).*sin((x.^2+y.^2)./2.*pi);
surf(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
rotate3d
colormap('summer')      %change colour map
shading interp          %remove gridlines and contours
