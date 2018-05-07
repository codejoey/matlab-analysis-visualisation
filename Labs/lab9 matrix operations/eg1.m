x= 0:5;
y= [15, 10, 9, 6, 2,0];

newx= 3.5;
newy= interp1(x,y,newx)

plot(x,y,'-ro')
axis([-1,6,-1,16])

line([newx, newx],[0,6], 'LineStyle',':')
line([0,6],[newy,newy],'LineStyle',':')