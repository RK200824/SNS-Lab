clc
clear all
close all

t = -10:0.1:10;

%% Signal 1: x(t) = heaviside(t)
x = heaviside(t);
x_rev = fliplr(x);

if isequal(x, x_rev)
    disp('x = heaviside(t) --> Signal is even')
elseif isequal(x, -x_rev)
    disp('x = heaviside(t) --> Signal is odd')
else
    disp('x = heaviside(t) --> Signal is neither even nor odd')
end

x_even = (x + x_rev)/2;
x_odd  = (x - x_rev)/2;
x_reconstructed = x_even + x_odd;

figure(1)
subplot(4,1,1)
plot(t, x, 'r', 'LineWidth', 2.0)
title('Original Signal x(t) = heaviside(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,2)
plot(t, x_even, 'r', 'LineWidth', 2.0)
title('Even Signal x_{even}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,3)
plot(t, x_odd, 'r', 'LineWidth', 2.0)
title('Odd Signal x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,4)
plot(t, x_reconstructed, 'r', 'LineWidth', 2.0)
title('Constructed Signal x_{th}(t) = x_{even}(t) + x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on


%% Signal 2: x(t) = cos(t)
x = cos(t);
x_rev = fliplr(x);

if isequal(x, x_rev)
    disp('x = cos(t) --> Signal is even')
elseif isequal(x, -x_rev)
    disp('x = cos(t) --> Signal is odd')
else
    disp('x = cos(t) --> Signal is neither even nor odd')
end

x_even = (x + x_rev)/2;
x_odd  = (x - x_rev)/2;
x_reconstructed = x_even + x_odd;

figure(2)
subplot(4,1,1)
plot(t, x, 'r', 'LineWidth', 2.0)
title('Original Signal x(t) = cos(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,2)
plot(t, x_even, 'r', 'LineWidth', 2.0)
title('Even Signal x_{even}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,3)
plot(t, x_odd, 'r', 'LineWidth', 2.0)
title('Odd Signal x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,4)
plot(t, x_reconstructed, 'r', 'LineWidth', 2.0)
title('Constructed Signal x_{th}(t) = x_{even}(t) + x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on


%% Signal 3: x(t) = sin(t)
x = sin(t);
x_rev = fliplr(x);

if isequal(x, x_rev)
    disp('x = sin(t) --> Signal is even')
elseif isequal(x, -x_rev)
    disp('x = sin(t) --> Signal is odd')
else
    disp('x = sin(t) --> Signal is neither even nor odd')
end

x_even = (x + x_rev)/2;
x_odd  = (x - x_rev)/2;
x_reconstructed = x_even + x_odd;

figure(3)
subplot(4,1,1)
plot(t, x, 'r', 'LineWidth', 2.0)
title('Original Signal x(t) = sin(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,2)
plot(t, x_even, 'r', 'LineWidth', 2.0)
title('Even Signal x_{even}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,3)
plot(t, x_odd, 'r', 'LineWidth', 2.0)
title('Odd Signal x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,4)
plot(t, x_reconstructed, 'r', 'LineWidth', 2.0)
title('Constructed Signal x_{th}(t) = x_{even}(t) + x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on


%% Signal 4: x(t) = 2*(heaviside(t-2) - heaviside(t-4))
x = 2*(heaviside(t-2) - heaviside(t-4));
x_rev = fliplr(x);

if isequal(x, x_rev)
    disp('x = 2*(heaviside(t-2)-heaviside(t-4)) --> Signal is even')
elseif isequal(x, -x_rev)
    disp('x = 2*(heaviside(t-2)-heaviside(t-4)) --> Signal is odd')
else
    disp('x = 2*(heaviside(t-2)-heaviside(t-4)) --> Signal is neither even nor odd')
end

x_even = (x + x_rev)/2;
x_odd  = (x - x_rev)/2;
x_reconstructed = x_even + x_odd;

figure(4)
subplot(4,1,1)
plot(t, x, 'r', 'LineWidth', 2.0)
title('Original Signal x(t) = 2*(heaviside(t-2)-heaviside(t-4))')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,2)
plot(t, x_even, 'r', 'LineWidth', 2.0)
title('Even Signal x_{even}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,3)
plot(t, x_odd, 'r', 'LineWidth', 2.0)
title('Odd Signal x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on

subplot(4,1,4)
plot(t, x_reconstructed, 'r', 'LineWidth', 2.0)
title('Constructed Signal x_{th}(t) = x_{even}(t) + x_{odd}(t)')
xlabel('Time Axis -->')
ylabel('Function Axis -->')
grid on