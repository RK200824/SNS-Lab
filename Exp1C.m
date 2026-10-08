clc
clear all
close all

t = -10:0.01:20;

figure(1)

subplot(1, 2, 1)
ramp0 = heaviside(t);
ramp1 = t.*heaviside(t);
ramp2 = (t-4).*heaviside(t-4);
ramp3 = heaviside(t-6);
ramp4 = heaviside(t-8);

y = ramp1 - ramp2 + 4*ramp3 - 8*ramp4;

plot(t, y, 'LineWidth', 2.0, 'Color', 'b')
title('Trapezoidal Pulse Signal')
xlabel('t ->')
ylabel('Amplitude ->')
grid on

subplot(1, 2, 2)
ramp5 = (t-2).*heaviside(t-2);
ramp6 = (t-6).*heaviside(t-6);
ramp7 = (t-8).*heaviside(t-8);
ramp8 = (t-10).*heaviside(t-10);
ramp9 = (t-12).*heaviside(t-12);
ramp10 = heaviside(t-14);
ramp11 = (t-14).*heaviside(t-14);

y = ramp1 - ramp5 + ramp2 - ramp6 - 6*ramp4 - ramp7 + ramp8 + ramp9 + 2*ramp10 - ramp11;
plot(t, y, 'LineWidth', 2.0, 'Color', 'r')
title('Complex Piecewise Function')
xlabel('t ->')
ylabel('Amplitude ->')
grid on


figure(2)


t2 = -12:0.01:4;   

subplot(1, 2, 1)
seg_rise  = (t2+12).*heaviside(t2+12) - (t2+6).*heaviside(t2+6);  
seg_notch = -8*heaviside(t2+6) + 8*heaviside(t2+5);               
seg_dip   = (t2).*heaviside(t2) - (t2-1).*heaviside(t2-1);        
seg_exp   = exp(t2).*heaviside(t2-1);                             

y = seg_rise + seg_notch + seg_dip + seg_exp;

plot(t2, y, 'LineWidth', 2.0, 'Color', 'b')
title('Complex (Higher Order) Signal')
xlabel('Time Axis')
ylabel('Function Axis')
grid on

subplot(1, 2, 2)
ramp12 = heaviside(t-12);
ramp13 = heaviside(t-16);

y = -7*ramp0 + ramp1 - ramp5 + ramp6 - ramp7 - 8*ramp4 + 4*ramp12 + ramp10 + 2*ramp13;

plot(t, y, 'LineWidth', 2.0, 'Color', 'g')
title('Required Signal')   
xlabel('t ->')
ylabel('Amplitude ->')
grid on
