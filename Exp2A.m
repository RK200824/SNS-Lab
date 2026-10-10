%Fourier Series for Given Function
clear all;
close all;
clc;

syms x
pi = 3.142857;
sum = 0;
y = exp(-0.25*x); %function in question
%y = heaviside(x);
%y = exp(x);
%y = x.*heaviside(x);
a0 = (1/pi)*int(y, x, -pi, pi);

for n = 1:10 %10 indicates precision
    %finding the coefficients
    an = (1/pi)*int(y*cos(n*x), x, -pi, pi);
    bn = (1/pi)*int(y*sin(n*x), x, -pi, pi);
    sum=sum+(an*cos(n*x)+bn*sin(n*x));
    disp('Iteration no.')
    disp(n)
end

subplot(3, 1, 1)
ezplot(x, y, [-pi, pi]);
hold on
ezplot(x, (sum+a0/2), [-pi,pi]);
grid on
title('Orignal overlapped Fourier Equivalent Waveform')

subplot(3, 1, 2)
ezplot(x, y, [-pi, pi]);
title('Orignal Waveform')
grid on;

subplot(3, 1, 3)
ezplot(x, (sum + a0/2), [-pi, pi]);
title('Fourier Equivalent Waveform')
grid on