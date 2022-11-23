clc
clear

t = -5:0.01:5;

ge = (x(t) + x(-t))/2;
go = (x(t) - x(-t))/2;

subplot(2, 1, 1)
plot(t, ge); grid on
title("Even")
subplot(2, 1, 2)
plot(t, go); grid on
title("Odd")

function x = x(t)
    x = cos(2.*pi.*t + pi/4);
end
