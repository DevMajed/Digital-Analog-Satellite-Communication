% ECE 471 : Drill Problem 5.12

close all
clear all
D = 1:1:1000;

B1 = 100E3; %kHz
R1 = 2*B1*log2(1+D);

figure('NumberTitle','off','Name','Drill 5.12 Part a)')
plot(D,R1,'r')

B2 = 1E6; %MHz
R2 = 2*B2*log2(1+D);

figure('NumberTitle','off','Name','Drill 5.12 Part b)')
plot(D,R1,'r',D,R2,'b')
