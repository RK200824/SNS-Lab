%inverse Laplace

clear
close all
clc

syms s

y = 1/(s^2 + 4*s + 5);
L = ilaplace(y);

subplot(2, 1, 1)
fplot(y, [0, 10], 'LineWidth', 2.0, 'Color', 'b')
title('Laplace Transform')
xlabel('s')
ylabel('Y(s)')
grid on

subplot(2, 1, 2)
fplot(L, [0, 10], 'LineWidth', 2.0, 'Color', 'r')
title('Inverse Laplace Transform')
xlabel('t')
ylabel('y(t)')
grid on