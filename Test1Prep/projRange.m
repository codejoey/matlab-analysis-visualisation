function r = projRange(v,a)
rads= a/180; %not working out

% time= (sind(rads)*v)/9.81*2;
% r= (cos(rads))*v*time
  
  time=(sind(a)*v)/9.81*2
  r= (cosd(a))*v*time
end