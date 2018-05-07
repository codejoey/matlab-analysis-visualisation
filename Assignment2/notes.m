 % data2= struct2table(airspace)
    %data1= webread(fullURL)
    %data= urlwrite(fullURL)
    %csvwrite('cody.csv',data1)
    
    %data2= csvread(cody.csv)
    %data= urlwrite(fullURL)
    
    %data = csvread(urlwrite('http://teaching.csse.uwa.edu.au/units/CITS2401/drone.csv','cody.csv'));