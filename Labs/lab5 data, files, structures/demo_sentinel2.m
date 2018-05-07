choice= 'x';
while choice ~= 't' && choice ~= 's' && choice ~= 'p'
    choice= input('Choose from tuna, salmon or pasta (t/s/p): ', 's');
end
disp('Excellent choice!')