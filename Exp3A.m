%laplace transformation

clear
close all
clc

syms t
y = sin(t);
L = laplace(y);

subplot(2, 1, 1)
fplot(y, [0, 10], 'LineWidth', 2.0, 'Color', 'b')
title('Time Domain Signal')
xlabel('t')
ylabel('y(t)')
grid on

subplot(2, 1, 2)
fplot(L, [0, 10], 'LineWidth', 2.0, 'Color', 'r')
title('Laplace Transform')
xlabel('s')
ylabel('Y(s)')
grid on