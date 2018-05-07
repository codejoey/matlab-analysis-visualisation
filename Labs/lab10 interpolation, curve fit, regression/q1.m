temp= csvread('temperature.csv');
X= temp(:,1);
Y= temp(:,2);
coeff= polyfit(X,Y,2)

plot(X,Y)