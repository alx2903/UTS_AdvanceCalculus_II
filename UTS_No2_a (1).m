clc
clear

t = -20:1:20;

plot(x(t), y(t)); hold on; grid on

function y = y(t)
    y1 = 100*x(t); y2 = 1000; y3 = -1000;
    y = y1.*(-10 <= x(t) & x(t) <= 10) + y2.*(x(t) > 10) + y3.*(x(t) < -10);
end

function x = x(t)
    x = t;
end