clear
surfaceArea= [2.51 6.16 4.73 3.52 8.31 5.85 5.50 9.17 2.860 7.57]';
weight= [7.54 3.8 5.68 0.76 0.54 5.31 7.79 9.34 1.3 5.69]';
speed= [46.58 41.74 45.60 18.07 33.89 47.79 58.29 78.54 18.30 55.65]';

% coeff= polyfit([surfaceArea,weight],1)
% newspeed= polyval(coeff,[2.51,7.54])


% A= [x.^3 x ones(size(x))] %polynomial regression
% b= A\y

%speed = a*surfaceArea + b*weight + c

A= [surfaceArea, weight, ones(size(weight))];
b= A\speed
