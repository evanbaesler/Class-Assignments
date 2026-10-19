clear; clc; close all;

w0 = 1;
alpha = 0.2*w0;
wd = sqrt(w0^2 - alpha^2);
dt = 0.1;
a = 5;

t = 0:dt:50;

% Impulse response h(t)
h = exp(-alpha*t).*sin(wd*t)/wd;
u = double(t >= a);

% Numerical convolution
y_num = conv(u,h)*dt;
y_num = y_num(1:length(t));

% Analytical solution
s = max(t-a,0);
y_exact = (1 - exp(-alpha*s) .* (cos(wd*s) + alpha/wd*sin(wd*s)))/(alpha^2 + wd^2);
y_exact(t<a) = 0;

% Plot
plot(t,y_num,'b',t,y_exact,'r--','LineWidth',1.5);
legend('numerical','analytical');
xlabel('time (s)');
ylabel('y(t)');
grid on;
title('Delayed Step Response');