%Program to find the zeroes, poles and gain from the given transfer function

clc
close all
clear

num = input('Enter the numerator of the transfer function: ')
den = input('Enter the denominator of the transfer function: ')

[z, p, k] = tf2zp(num,den);

disp('For the transfer function:')
tf(num, den)

disp('The zeroes are:')
z
disp('The poles are:')
p
disp('The system gain is: ')
k