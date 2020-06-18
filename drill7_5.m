clear all
close all
N = 10000;
f1= 10;
f2= 20;
ts= 0.00001;
delta=0.01;

t = ts*[0:N-1];

m = sin(2*pi*f1*t) + 0.5*cos(2*pi*f2*t);

mq(1) = 0;
eq(1) = 0;
b(1)  = 0;
error(1)=m(1);

for n=2:N
    error(n) = m(n) - mq(n-1);
    eq(n) = sign(error(n))*delta;
    mq(n) = mq(n-1)+eq(n);
    b(n) = sign(eq(n));
end

figure('NumberTitle','off','Name','m(t) & mq(t)')
plot(t,m,'b',t,mq,'*r')
figure('NumberTitle','off','Name','b(t)')
plot(b)
figure('NumberTitle','off','Name','error')
plot(error)
