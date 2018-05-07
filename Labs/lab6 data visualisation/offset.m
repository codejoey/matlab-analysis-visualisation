function [ output ] = offset( rads )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

angles= 0:pi/3:2*pi;
angles=angles+rads;
sines= sin(angles);
cosines= cos(angles);

figure
plot(cosines,sines)

end

