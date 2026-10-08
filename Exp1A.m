clc
clear all
close all

t = -10:0.1:10;

figure(1)

%%%% Unit Impulse
func = dirac(t);
subplot(2, 2, 1)
plot(t, func, "LineWidth", 2.0)
title('Unit Impulse Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Unit Step
func = heaviside(t);
subplot(2, 2, 2)
plot(t, func, "LineWidth", 2.0)
title('Unit Step Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Unit Ramp
func = t.*heaviside(t);
subplot(2, 2, 3)
plot(t, func, "LineWidth", 2.0)
title('Unit Ramp Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Unit Parabola
func = heaviside(t).*exp(t);
subplot(2, 2, 4)
plot(t, func, "LineWidth", 2.0)
title('Unit Parabola Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on


figure(2)

%%%% Sine Wave
func = sin(t);
subplot(2, 2, 1)
plot(t, func, "LineWidth", 2.0)
title('Sine Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])

%%%% Cosine Wave
func = cos(t);
subplot(2, 2, 2)
plot(t, func, "LineWidth", 2.0)
title('Cosine Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])

%%%% Tangent Wave
func = tan(t);
subplot(2, 2, 3)
plot(t, func, "LineWidth", 2.0)
title('Tangent Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])

%%%% Logarithmic Function
func = log(t).*heaviside(t) + log(-t).*heaviside(-t);
subplot(2, 2, 4)
plot(t, func, "LineWidth", 2.0)
title('Logarithmic Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

figure(3)

%%%% Square Wave
func = square(t);
subplot(2, 2, 1)
plot(t, func, "LineWidth", 2.0)
title('Square Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Backward Sawtooth Wave
func = -sawtooth(t, 0);
subplot(2, 2, 2)
plot(t, func, "LineWidth", 2.0)
title('Backward Sawtooth Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Forward Sawtooth Wave
func = sawtooth(t, 0);
subplot(2, 2, 3)
plot(t, func, "LineWidth", 2.0)
title('Forward Sawtooth Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Triangular Wave
func = sawtooth(t, 0.5);
subplot(2, 2, 4)
plot(t, func, "LineWidth", 2.0)
title('Triangular Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

figure(4)

%%%% Sinc Wave
func = sinc(t);
subplot(2, 1, 1)
plot(t, func, "LineWidth", 2.0)
title('Sinc Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

%%%% Signum Function
func = sign(t);
subplot(2, 1, 2)
plot(t, func, "LineWidth", 2.0)
title('Signum Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on