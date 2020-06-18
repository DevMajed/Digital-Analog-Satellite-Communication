%% ECE 471 Drill Problem 4.81

close all
clear all
%% Part 1
%%
AM = 2;
FM = 10;
KF = 40;
FC = FM*10^3;
FS = 200*FC;
N = 10^6;
T = (1/FS)*[0:N -1];

%1a) What is beta?
BETA = (KF*AM)/FM;
fprintf('1a).Beta Value: %0.5g\n',BETA)

%1b) plog (d/dt)s_fm(t)
SFM = cos(2*pi*FC*T + BETA*sin(2*pi*FM*T));
SFMd= diff(SFM);

figure('NumberTitle','off','Name','Part 1b).')
plot(T(1:N-1),SFMd(1:N-1))
title('d/dt s_fm(t)')

%%
%%Part 2
%%
FM2 = FM/2;
KF = 10;
FC = 10^3;
FS = 8*FC;
T = (1/FS)*[0:N -1];

%2a) approcimate the generalized beta?
BETA = (KF*AM)/FM;
fprintf('1a).Beta Value: %0.5g\n',BETA)

%2b) plot (d/dt) s_fm(t)
SFM = cos(2*pi*FC*T + BETA*sin(2*pi*FM*T));
SFMd= diff(SFM);
figure('NumberTitle','off','Name','Part 2b).')
plot(T(1:N-1),SFMd(1:N-1))
title('d/dt sfm(t)')
