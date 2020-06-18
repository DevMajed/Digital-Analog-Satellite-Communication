

close all
clear all

snr  = [1:.2:100];
Perr = normcdf(sqrt(snr/2),sqrt(2*snr),1);


figure('NumberTitle','off','Name','Average error performance')
plot(snr,Perr)
figure('NumberTitle','off','Name','Semilogy of average error performance')
semilogy(snr,Perr)
