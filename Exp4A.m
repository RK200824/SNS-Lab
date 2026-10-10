%Program to find the transfer function from the given zeroes, poles and gain

clc
close all
clear 

z = input('Enter zeroes: ')
p = input('Enter poles: ')
k = input('Enter gain: ')

[num,den] = zp2tf(z,p,k);

disp('The transfer function is: ')
g = tf(num,den)
pzmap(g)