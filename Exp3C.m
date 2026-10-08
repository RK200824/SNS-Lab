%program to perform convolution using fourier transform

clear
close all
clc

syms t

x1 = exp(-2*t)*heaviside(t);
x2 = exp(-5*t)*heaviside(t);

y1 = fourier(x1);
y2 = fourier(x2);

y3 = y1 * y2;
x3 = ifourier(y3);

fplot(x1)
hold on
fplot(x2)
hold on
fplot(x3)
grid on
