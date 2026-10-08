clc
clear all
close all

t = -10:0.1:10;

figure(1)

%%%% Sine Wave
func1 = sin(t);
subplot(3, 2, 1)
plot(t, func1, "LineWidth", 2.0, "Color", 'b')
title('Sine Function')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])

%%%% Time Shifted Advancing Sine Wave
func1 = sin(t);
func2 = sin(t + 2);
subplot(3, 2, 2)
plot(t, func1, "LineWidth", 2.0, "Color", 'b')
hold on
plot(t, func2, "LineWidth", 2.0, "Color", 'r')
title('Time Shifting Advance y(t) = sin(t+2)')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])
legend('Original Wave', 'Advanced Wave')

%%%% Time Shifted Delayed Sine Wave
func1 = sin(t);
func2 = sin(t - 2);
subplot(3, 2, 3)
plot(t, func1, "LineWidth", 2.0, "Color", 'b')
hold on
plot(t, func2, "LineWidth", 2.0, "Color", 'r')
title('Time Shifting Delay y(t) = sin(t-2)')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])
legend('Original Wave', 'Delayed Wave')

%%%% Time Scaled Sine Wave
func1 = sin(t);
func2 = sin(2 * t);
subplot(3, 2, 4)
plot(t, func1, "LineWidth", 2.0, "Color", 'b')
hold on
plot(t, func2, "LineWidth", 2.0, "Color", 'r')
title('Time Scaling y(t) = sin(2t)')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])
legend('Original Wave', 'Scaled Wave')

%%%% Multiplied by Constant Sine Wave
func1 = sin(t);
func2 = 2*sin(t);
subplot(3, 2, 5)
plot(t, func1, "LineWidth", 2.0, "Color", 'b')
hold on
plot(t, func2, "LineWidth", 2.0, "Color", 'r')
title('Multiplying by Constant y(t) = 2sin(t)')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])
legend('Original Wave', 'Multiplied Wave')

%%%% Clamped Sine Wave
func1 = sin(t);
func2 = sin(t) + 2;
subplot(3, 2, 6)
plot(t, func1, "LineWidth", 2.0, "Color", 'b')
hold on
plot(t, func2, "LineWidth", 2.0, "Color", 'r')
title('Clamping y(t) = sin(t) + 2')
xlabel('Time Axis')
ylabel('Function Axis')
grid on
xlim([0 10])
legend('Original Wave', 'Clamped Wave')