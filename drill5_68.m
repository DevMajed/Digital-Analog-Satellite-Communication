% ECE 471 : Drill Problem 5.68

close all
clear all


m = exprnd(2,1,10000);  
hist(m,30);

figure('NumberTitle','off','Name','aplha=1/2')
y=1-exp(-(1/2)*m);
hist(y,30);

figure('NumberTitle','off','Name','aplha=2')
y=1-exp(-(2)*m);
hist(y,30);

figure('NumberTitle','off','Name','aplha=1')
y=1-exp(-(1)*m);
hist(y,30);
