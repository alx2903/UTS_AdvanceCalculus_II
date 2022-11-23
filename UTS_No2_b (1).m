clc
clear

t = -2:0.01:4;

plot(t, y(t)); hold on; grid on
plot(t, x(t)); hold off;
legend("y(t)", "x(t)")

function y = y(t)
    y1 = 100*x(t); y2 = 1000; y3 = -1000;
    y = y1.*(-10 <= x(t) & x(t) <= 10) + y2.*(x(t) > 10) + y3.*(x(t) < -10);
end

function x = x(t)
    x = 20*cos(2*pi*t)*1.*(t>=0);
end
