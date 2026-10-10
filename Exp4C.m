%Program to find the poles and zeros of a transfer function and plot the pole-zero map and impulse response

clc
close all
clear

num = input('Enter the numerator of the transfer function: ')
den = input('Enter the denominator of the transfer function: ')

disp('For the transfer function:')
g = tf(num, den)

subplot(2, 1, 1)
pzmap(g)

subplot(2, 1, 2)
impulse(g);