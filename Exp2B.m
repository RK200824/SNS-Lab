%Fourier Transform
clc
clear all
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
grid on

% Fourier Transform of step
f = heaviside(t);
subplot(222)
fplot(f)
hold on
title('Step Waveform')
f_FT2 = fourier(f);
fplot(f_FT2)
grid on

% Fourier Transform of cosine
f = 2*cos(3*t);
subplot(223)
fplot(f)
hold on
title('Cosine Waveform')
f_FT3 = fourier(f);
fplot(f_FT3)
grid on

% Fourier Transform of sine
f = 4*sin(5*t);
subplot(224)
fplot(f)
hold on
title('Sine Waveform')
f_FT4 = fourier(f);
fplot(f_FT4)
grid on

figure(2)

% Fourier Transform of impulse
f = dirac(t);
fplot(f)
hold on
title('Impulse Waveform')
f_FT5 = fourier(f);
fplot(f_FT5)
grid on