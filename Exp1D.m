% program to perform convolution

close all
clear all
clc

t = linspace(-10, 10, 100);
dt = t(2) - t(1);

x = heaviside(t).*cos(t);
h = heaviside(t).*t;
y_th = (1 - cos(t)).*heaviside(t);     % <-- fixed: was (1 + cos(t))

subplot(4, 1, 1)
plot(t, x)
xlabel('Time (t)')
ylabel('x(t)')
title('First Signal x(t)')
grid on

subplot(4, 1, 2)
plot(t, h)
xlabel('Time (t)')
ylabel('h(t)')
title('Second Signal h(t)')
grid on

% Perform convolution of the two signals
y_pr = conv(x, h, "same")*dt;

t1 = linspace(-10, 10, 100);

subplot(4, 1, 3)
plot(t1, y_pr)
xlabel('Time (t)')
ylabel('y_{pr}(t)')
title('Convolution Result y_{pr}(t)')
grid on

subplot(4, 1, 4)
plot(t, y_th)
xlabel('Time (t)')
ylabel('y_{th}(t)')
title('Theoretical Result y_{th}(t)')
grid on