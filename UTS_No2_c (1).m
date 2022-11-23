clc
clear

t = -2:0.01:4;

subplot(2,1,1)
plot(t, y(t)); hold off; grid on

subplot(2,1,2)
plot(t, y(t-2)); grid on;

function y = y(t)
    y1 = 100*x(t); y2 = 1000; y3 = -1000;
    y = y1.*(-10 <= x(t) & x(t) <= 10) + y2.*(x(t) > 10) + y3.*(x(t) < -10);
end

function x = x(t)
    x = 20*cos(2*pi*t)*1.*(t>=0);
end
