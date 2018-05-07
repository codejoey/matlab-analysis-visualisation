function [touches, touchlist, ntouchlist] = drones(fileLink)
    fullURL= [fileLink];
    data = csvread(urlwrite(fullURL,'cody2.csv'));
    airspace.x= data(:,1);
    L= length(airspace(1).x);
    x= csvread('cody2.csv',0,0,[0 0 L-1 0]);
    y= csvread('cody2.csv',0,1,[0 1 L-1 1]);
    z= csvread('cody2.csv',0,2,[0 2 L-1 2]);
    rds= csvread('cody2.csv',0,3,[0 3 L-1 3]);
    lL=L;
    lx=x;
    ly=y;
    lz=z;
    lrds=rds;
    
    touches=0;
    touchlist = struct('x', cell(1, L), 'y', cell(1, L), 'z', cell(1, L), 'radius', cell(1, L));
    ntouchlist = struct('x', cell(1, L), 'y', cell(1, L), 'z', cell(1, L), 'radius', cell(1, L));
    for tm=1:L
        n=1;
        m=2;
        count=0;
        safe=1;
        while count ~= L-1
            dist= sqrt((x(n)-x(m))^2+(y(n)-y(m))^2+(z(n)-z(m))^2);
            totalrds= rds(n)+rds(m);
            if totalrds >= dist
                touches= touches+1;
                touchlist(tm).x= x(n);
                touchlist(tm).y= y(n);
                touchlist(tm).z= z(n);
                touchlist(tm).radius= rds(n);
                safe=0;
            end
            count=count+1;
            m=m+1;
        end
        if safe==1
            ntouchlist(tm).x= x(n);
            ntouchlist(tm).y= y(n);
            ntouchlist(tm).z= z(n);
            ntouchlist(tm).radius= rds(n);
        end
        x(n)=[];
        y(n)=[];
        z(n)=[];
        rds(n)=[];
        L=L-1;
        if L==1
            break
        end
    end
    %last element test
    n=lL;
    m=1;
    count=0;
    safe=1;
    while count ~= lL-1
        dist= sqrt((lx(n)-lx(m))^2+(ly(n)-ly(m))^2+(lz(n)-lz(m))^2);
        totalrds= lrds(n)+lrds(m);
        if totalrds >= dist
            touchlist(n).x= lx(n);
            touchlist(n).y= ly(n);
            touchlist(n).z= lz(n);
            touchlist(n).radius= lrds(n);
            safe=0;
        end
        count=count+1;
        m=m+1;
    end
    if safe==1
        ntouchlist(n).x= lx(n);
        ntouchlist(n).y= ly(n);
        ntouchlist(n).z= lz(n);
        ntouchlist(n).radius= lrds(n);
    end
    %last element test end
    
    %delete empty elements
    b=1;
    for a=1:lL
        if isempty(ntouchlist(b).x)
            ntouchlist(b)= [];
        else
            b=b+1;
            a(end)=[];
        end
    end
    d=1;
    for c=1:lL
        if isempty(touchlist(d).x)
            touchlist(d)= [];
        else
            d=d+1;
            c(end)=[];
        end
    end
    touches;
    touchlist;
    ntouchlist;
    struct2table(touchlist);
    struct2table(ntouchlist);
    
    ntx=struct2table(ntouchlist);
    ntL=height(ntx);
    ntd= ntx{:,:};
    %subplot 1
    subplot(1,2,1);
    [X, Y, Z] = sphere;
    for k = 1:lL
        XX = X * data(k, 4) + data(k, 1);
        YY = Y * data(k, 4) + data(k, 2);
        ZZ = Z * data(k, 4) + data(k, 3);
        surf(XX, YY, ZZ);
        hold on
    end
    title('Reference plot for area of coverage for all drones');
    xlabel('Horizontal distance,x (in meters)');
    ylabel('Vertical distance,y (in meters)');
    zlabel('Height,z (in meters)');
    grid off;
    view(45,30);
    %subplot2
    subplot(1,2,2);
    [X2, Y2, Z2] = sphere;
    for k = 1:ntL
        XX2 = X2 * ntd(k, 4) + ntd(k, 1);
        YY2 = Y2 * ntd(k, 4) + ntd(k, 2);
        ZZ2 = Z2 * ntd(k, 4) + ntd(k, 3);
        surf(XX2, YY2, ZZ2);
        hold on
    end
    title('Reference plot for area of coverage for all non-touching drones');
    xlabel('Horizontal distance,x (in meters)');
    ylabel('Vertical distance,y (in meters)');
    zlabel('Height,z (in meters)');
    grid off;
    view(45,30);
end