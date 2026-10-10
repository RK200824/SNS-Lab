%Fourier Transform
clc
clear
close all

syms t w

figure(1)

% Fourier Transform of exponential
f = exp(-2*abs(t));
subplot(221)
fplot(f)
hold on
title('Exponential Waveform')
f_FT1 = fourier(f);
fplot(f_FT1)
xlabel('Frequency')
ylabel('Magnitude')
grid on

% Fourier Transform of step
f = heaviside(t);
subplot(222)
fplot(f)
hold on
title('Step Waveform')
f_FT2 = fourier(f);
fplot(f_FT2)
xlabel('Frequency')
ylabel('Magnitude')
grid on

% Fourier Transform of cosine
f = 2*cos(3*t);
subplot(223)
fplot(f)
hold on
title('Cosine Waveform')
f_FT3 = fourier(f);
fplot(f_FT3)
xlabel('Frequency')
ylabel('Magnitude')
grid on

% Fourier Transform of sine
f = 4*sin(5*t);
subplot(224)
fplot(f)
hold on
title('Sine Waveform')
f_FT4 = fourier(f);
fplot(f_FT4)
xlabel('Frequency')
ylabel('Magnitude')
grid on

% Fourier Transform of impulse
f = dirac(t);
f_FT5 = fourier(f);