function [touches, touchlist, ntouchlist] = dronesup(fileLink)
fullURL= [fileLink];
data = csvread(urlwrite(fullURL,'cody2.csv'));
airspace.x= data(:,1);
L= length(airspace(1).x);
x= csvread('cody2.csv',0,0,[0 0 L-1 0]);
y= csvread('cody2.csv',0,1,[0 1 L-1 1]);
z= csvread('cody2.csv',0,2,[0 2 L-1 2]);
rds= csvread('cody2.csv',0,3,[0 3 L-1 3]);

touches=0;
touchlist = struct('x', cell(1, L), 'y', cell(1, L), 'z', cell(1, L), 'radius', cell(1, L));
ntouchlist = struct('x', cell(1, L), 'y', cell(1, L), 'z', cell(1, L), 'radius', cell(1, L));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for tm=1:L
    tmpx=x;
    tmpx(tm)=[];
    tmpy=y;
    tmpy(tm)=[];
    tmpz=z;
    tmpz(tm)=[];
    tmprds=rds;
    tmprds(tm)=[];
    
    n=1;
    count=0;%
    safe=1;%
    while count ~= L-1
        dist= sqrt((x(tm)-tmpx(n))^2+(y(tm)-tmpy(n))^2+(z(tm)-tmpz(n))^2);
        totalrds= rds(tm)+tmprds(n);
        if totalrds >= dist
            touchlist(tm).x= x(tm);
            touchlist(tm).y= y(tm);
            touchlist(tm).z= z(tm);
            touchlist(tm).radius= rds(tm);
            safe=0;
        end
        count=count+1;
        n=n+1;
    end
    if safe==1
        ntouchlist(tm).x= x(tm);
        ntouchlist(tm).y= y(tm);
        ntouchlist(tm).z= z(tm);
        ntouchlist(tm).radius= rds(tm);
    end
end
touches
touchlist
ntouchlist
end
