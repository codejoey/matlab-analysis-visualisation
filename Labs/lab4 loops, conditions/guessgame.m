N= randi(100)
T=1;
G= input('Guess a number between 1-100, you have 5 tries: ')

if G==N
    win='You got it in one shot!';
    disp(win)
end
while G~=N && T~=5
    if G<N
        G=input('Guess bigger: ')
        T=T+1;
    elseif G>N
        G= input('Guess smaller: ')
        T=T+1;
    end
    
    if G==N
        win='You got it in try'; %try number
        disp(win),disp(T)
    elseif T==5
        lose='You lost';
        disp(lose)
        Answer=N
    end
end