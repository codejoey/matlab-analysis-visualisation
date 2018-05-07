fileLink= 'http://teaching.csse.uwa.edu.au/units/CITS2401/drone.csv';
    % fileLink will contain the entire weblink of the file as string
    fullURL= [fileLink];
    data = csvread(urlwrite(fullURL,'cody1.csv'));
    airspace.x= data(:,1);
    %     airspace.y= data(:,2);
    %     airspace.z= data(:,3);
    %     airspace.radius= data(:,4);
    L= length(airspace(1).x);
    x= csvread('cody1.csv',0,0,[0 0 L-1 0]);
    y= csvread('cody1.csv',0,1,[0 1 L-1 1]);
    z= csvread('cody1.csv',0,2,[0 2 L-1 2]);
    rds= csvread('cody1.csv',0,3,[0 3 L-1 3]);
    lL=L;
    lx=x;
    ly=y;
    lz=z;
    lrds=rds;
    
    touches=0;
    touchlist = struct('x', cell(1, L), 'y', cell(1, L), 'z', cell(1, L), 'radius', cell(1, L));
    ntouchlist = struct('x', cell(1, L), 'y', cell(1, L), 'z', cell(1, L), 'radius', cell(1, L));
    delt=[];
    delnt=[];
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
                delnt(end+1)=tm;
            end
            count=count+1;
            m=m+1;
        end
        if safe==1
            ntouchlist(tm).x= x(n);
            ntouchlist(tm).y= y(n);
            ntouchlist(tm).z= z(n);
            ntouchlist(tm).radius= rds(n);
            delt(end+1)=tm;
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
            delnt(end+1)=n;
        end
        count=count+1;
        m=m+1;
    end
    if safe==1
        ntouchlist(n).x= lx(n);
        ntouchlist(n).y= ly(n);
        ntouchlist(n).z= lz(n);
        ntouchlist(n).radius= lrds(n);
        delt(end+1)=n;
    end
    %last element test end
    
    touches;
    touchlist;
    ntouchlist;
    % Sample statement to access online CSV file using urlwrite. 
    % Read help of urlwrite and csvread for details
    % data = csvread(urlwrite('www.google.com/sample.csv','cody.csv'));
    %'http://teaching.csse.uwa.edu.au/units/CITS2401/drone.csv'

