function [touches, touchlist, ntouchlist] = drones2(fileLink);
    % fileLink will contain the entire weblink of the file as string
    fullURL= [fileLink];
    data = csvread(urlwrite(fullURL,'cody1.csv'))
%     airspace.x= data(:,1);
%     airspace.y= data(:,2);
%     airspace.z= data(:,3);
%     airspace.radius= data(:,4);

  %     airspace2.x= (data(:,1))';
%     airspace2.y= (data(:,2))';
%     airspace2.z= (data(:,3))';
%     airspace2.radius= (data(:,4))';
%     airspace(1).x
%     airspace(1)
 
%                 touchlist(n).x= x(m);
%                 touchlist(n).y= y(m);
%                 touchlist(n).z= z(m);
%                 touchlist(n).radius= rds(m);

    
    
    touches = 0;
    touchlist = [1];
    ntouchlist = [1];
    
    % Sample statement to access online CSV file using urlwrite. 
    % Read help of urlwrite and csvread for details
    % data = csvread(urlwrite('www.google.com/sample.csv','cody.csv'));
    %'http://teaching.csse.uwa.edu.au/units/CITS2401/drone.csv'

end