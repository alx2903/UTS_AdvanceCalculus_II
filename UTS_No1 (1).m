clc
clear

t = -6:0.01:6;

x0 = x(t);

x1 = x(t+1);
x2 = x(t-1);
x3 = x(-t);

x4 = 0.5*(x(t) + x(-t));
x5 = 0.5*(x(t) - x(-t));

x6 = x(2*t);
x7 = x(0.5*t);

y = diff(x(t))./diff(t);

figure(1)
p = plot(t, x0); grid on;

figure(2)
subplot(3,1,1)
p = plot(t, x1); grid on;

subplot(3,1,2)
p = plot(t, x2); grid on;

subplot(3,1,3)
p = plot(t, x3); grid on;

figure(3)
subplot(2,1,1)
p = plot(t, x4); grid on;

subplot(2,1,2)
p = plot(t, x5); grid on;

figure(4)
subplot(2,1,1)
p = plot(t, x6); grid on;

subplot(2,1,2)
p = plot(t, x7); grid on;

figure(5)
subplot(2,1,1)
dydx = gradient(x(t), t);
p = plot(t, dydx); grid on;

subplot(2,1,2)
Y = cumtrapz(t,dydx);
p = plot(t,Y); grid on;

function x = x(t)
    x = (1-t).*(0 <= t & t <= 1);
end