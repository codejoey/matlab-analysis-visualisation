angles= 0: pi/4:2*pi %creates array of angles in pi/4 increments

sines= sin(angles) % Use MATLAB's sine function to evaluate
% the sine of all the values in the "angles"
% array and store them in a new array called
% "sines". Note that you must specify angles
% in radians.

plot(sines) % This pops up a "Figure" Window and plots
% the data in the "sines" array.  The X
% coordinate of each data point is set to
% its index number in the array.

figure
plot(angles,sines)% This plots the data using the values in
% the "angles" array as the X coordinates
% corresponding to each of the Y values in
% the "sines" array.  The plot will be much
% the same as before, but notice how the X
% axis changes.
