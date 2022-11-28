clc
clear

n = -6:1:6;

ge = (g(x(n)) + g(x(n)))/2 ; % Compute the even-part values
go = (g(x(n)) - g(x(n)))/2 ; % Compute the odd-part values

figure(1)
subplot(3,1,1)
stem(n, x(n-1)); grid on;

subplot(3,1,2)
stem(n, x(-n)); grid on;

subplot(3,1,3)
stem(n, x(2-n)); grid on;

figure(2)
subplot(2,1,1)
stem(n, ge); grid on;

subplot(2,1,2)
stem(n, go); grid on;

function x = x(n)
    x1 = 1; x2 = 0.5;
    x = x1.*(n==-1 | n==0 | n==1) + x2.*(n==2);
end

function y = g(x) % Function definition for g(x)
  y = x.*(x.^2+1) ;
end
