%Fourier Spectra
clc
clear
close all
f=-5:.01:5;


X=4*sinc(4*f); %for rectangular pulse of width 2 and height 1
%X= 4./(f.^2 + 4); %for exp(-2*abs(t))

subplot (3, 1, 1)
plot(f,X)
title('Amplitute Spectrum')
xlabel('Frequency')
ylabel('Magnitude')
grid on

%Amplitute Spectrum
subplot (3, 1, 2)
plot(f, abs(X))
title('Absolute Amplitute Spectrum')
xlabel('Frequency')
ylabel('Magnitude')
grid on

%Phase Spectrum
subplot (3, 1, 3)
plot(f, angle(X))
title('Phase Spectrum')
xlabel('Frequency')
ylabel('Phase (radians)')
grid on