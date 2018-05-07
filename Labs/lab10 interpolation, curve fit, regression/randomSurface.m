z0= rand(5);
x= 1:5;
y= 1:5;
[x0,y0]= meshgrid(x,y);

xa= 1:0.1:5;
ya= 1:0.1:5;
[x1,y1]= meshgrid(xa,ya);

z1= interp2(x0,y0,z0,x1,y1, 'cubic');

figure
surf(z1)
colormap hsv
shading interp
colorbar
caxis([0 1])
%contour([0 50])