clear
z0 = [0.5 0.65 0.35 0.90 0.80;
    0.75 0.60 0.35 0.60 0.20;
    0.50 0.60 0.20 0.65 0.45;
    0.35 0.95 0.65 0.95 0.25;
    0.20 0.05 0.35 0.70 0.60];
x= 1:5;
y= 1:5;
[x0,y0]= meshgrid(x,y);

xa= 1:0.1:5;
ya= 1:0.1:5;
[x1,y1]= meshgrid(xa,ya);   `

z1= interp2(x0,y0,z0,x1,y1, 'cubic');
%z1= interp2(x0,y0,z0,x1,y1, 'spline');

figure
surf(z1)
colormap hsv
%colormap prism
shading interp
colorbar
hold on
caxis([0 1])
res= sum(sum(z1))
contour(z1)

figure
surf(z1)
colormap prism
shading interp
colorbar
hold on
caxis([0 1])
res= sum(sum(z1));
contour(z1)