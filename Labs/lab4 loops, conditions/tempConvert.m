temperature= input('Enter a non-negative temperature in Celsius: ');
C= temperature;
Fahrenheit= C* (9/5) +32

another= input('Give me another Celsius: ');
C= another;
Fahrenheit= C* (9/5) +32
A= -1;

while another~= A
    another= input('Another one? Try a negative!: ');
    Fahrenheit= another* (9/5) +32
end

if another==A
    win='Congrats!' ;
    disp(win)
end