% ECE 471 : Drill Problem 4.55

close all
clear all
%let : m(t) = cos(2*pi*fm*t), fm=100, kf=0.1
FM=100;
KF=0.1;

%1a) what is  beta
BETA=(KF*1)/FM;
fprintf('1a).Beta Value: %0.5g\n',BETA)

%1b) let dt=0.1u sec let the simulation duration be T = 10000dt,
%use MATLAB to simulate the complex baseband envelope signal : sm(t) = exp (j*beta*sin(2*pi*fm*t))
%dt
N=10E5;
DT=0.1 * 1E-6;
%T
T=DT*(0:1:(N-1));
%sm(t)
SM = exp(1i*BETA*sin(2*pi*FM*T));
figure('NumberTitle','off','Name','Part 1b).')
plot(SM)
title('complex baseband envelope signal')

%1c) plot the real and imaginary parts of this complex baseband signal. is it periodic?
RSM = real(SM);
ISM = imag(SM);

figure('NumberTitle','off','Name','Part 1c).')
subplot(2,1,1)
plot(1-RSM)
title('Real part of the complex signal')
subplot(2,1,2)
plot(ISM)
title('Imag part of the complex signal')


%1d) change kf=10,fm=10,... what is the beta?
%plot the real and imaginary parts in Matlab.
FM=10;
KF=10;
BETA=(KF*1)/FM;
fprintf('1d).Beta Value: %0.5g\n',BETA)

SM = exp(1i*BETA*sin(2*pi*FM*T));
figure('NumberTitle','off','Name','Part 1d).a')
plot(SM)
title('complex baseband envelope signal')

RSM = real(SM);
ISM = imag(SM);

figure('NumberTitle','off','Name','Part 1d).b')
subplot(2,1,1)
plot(1-RSM)
title('Real part of the complex signal')
subplot(2,1,2)
plot(ISM)
title('Imag part of the complex signal')
