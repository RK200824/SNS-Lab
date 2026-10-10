%program to perform convolution using laplace transform

clear
close all
clc

syms t

x1 = exp(-2*t)*heaviside(t);
x2 = exp(-5*t)*heaviside(t);

y1 = laplace(x1);
y2 = laplace(x2);

y3 = y1 * y2;
x3 = ilaplace(y3);

subplot(2, 1, 1)
fplot(x1)
hold on
fplot(x2)
title('Original Waveforms')
xlabel('Time')
ylabel('Amplitude')
grid on

subplot(2, 1, 2)
fplot(x3)
title('Convolution in Time Domain')
xlabel('Time')
ylabel('Amplitude')
grid on