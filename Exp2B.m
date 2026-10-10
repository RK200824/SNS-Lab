% Reconstructing a square wave using odd harmonics of its Fourier series and observing Gibbs' phenomenon

clear
close all
clc

syms x

y  = heaviside(x) - heaviside(x - pi);   % function in question
a0 = (1/pi)*int(y, x, -pi, pi);

values = [1, 3, 5, 7, 9, 11, 13, 15];    % odd harmonics
S = a0/2;                                % start with the DC term

for n = values
    % Fourier coefficients
    an = (1/pi)*int(y*cos(n*x), x, -pi, pi);
    bn = (1/pi)*int(y*sin(n*x), x, -pi, pi);
    S  = S + an*cos(n*x) + bn*sin(n*x);

    if n == 5
        S5 = S;                          % keep partial sum up to 5th harmonic
    end

    disp(['Iteration no. ', num2str(n)])
end

figure(1)

subplot(3, 1, 1)
fplot(y, [-pi, pi], 'b', 'LineWidth', 1.5); hold on
fplot(S5, [-pi, pi], 'r');
title('Original vs. reconstruction (harmonics up to 5)')
legend('Original', 'Reconstructed')
grid on

subplot(3, 1, 2)
fplot(y, [-pi, pi], 'b', 'LineWidth', 1.5); hold on
fplot(S, [-pi, pi], 'r');
title('Original vs. reconstruction (harmonics up to 15)')
legend('Original', 'Reconstructed')
grid on

subplot(3, 1, 3)
fplot(y, [-0.5, 0.5], 'b', 'LineWidth', 1.5); hold on
fplot(S, [-0.5, 0.5], 'r');
title('Zoom at the discontinuity: Gibbs overshoot')
legend('Original', 'Reconstructed')
grid on