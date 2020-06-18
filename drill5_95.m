clear all
close all
N = 10000;
bees = round(rand(1,N));
T = 1;
A = 1;
t = A*T*[1:N];
m = bees;

figure('NumberTitle','off','Name','message signal')
plot(t,m)
varn=1/64;
sigma = sqrt(varn/T);
noise = sigma*randn(1,N);

yn = m + noise;

figure('NumberTitle','off','Name','histogram of the N samples of y')

hist(yn,50)
%cut distribution in half
T = 1/2
sigma = sqrt(varn/T);
noise = sigma*randn(1,N);
yn = m + noise;
figure('NumberTitle','off','Name','Have the distribution')
hist(yn,50)

lamTH = A*T/2;
b_k = zeros(1,10000);
%Decision Rule
for t = 1:N
    if(yn(t) > lamTH)
        b_k(t) = 1;
    end
end
figure('NumberTitle','off','Name','Decision Rule: b_k')
plot(b_k,'*r',m,'b')