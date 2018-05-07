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
    %table sort
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
        count=0;
        safe=1;
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
    %count collide
    tmpx=x;
    tmpy=y;
    tmpz=z;
    tmprds=rds;
    for tm=1:L
        n=1;
        m=2;
        count=0;
        safe=1;
        while count ~= L-1
            dist= sqrt((tmpx(n)-tmpx(m))^2+(tmpy(n)-tmpy(m))^2+(tmpz(n)-tmpz(m))^2);
            totalrds= tmprds(n)+tmprds(m);
            if totalrds >= dist
                touches= touches+1;
            end
            count=count+1;
            m=m+1;
        end
        tmpx(n)=[];
        tmpy(n)=[];
        tmpz(n)=[];
        tmprds(n)=[];
        L=L-1;
        if L==1
            break
        end
    end

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
    figure
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
    grid off
    view(45,30)
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
    grid off
    view(45,30)
end