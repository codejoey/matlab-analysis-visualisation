clear
x= [1:10]';
y= [0.014 0.033 0.076 0.155 0.282 0.469 0.728 1.071 1.51 2.057]';
plot(x,y)

A= [x.^3 x ones(size(x))] %polynomial regression
b= A\y
