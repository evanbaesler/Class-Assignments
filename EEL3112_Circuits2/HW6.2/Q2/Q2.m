<<<<<<< Updated upstream
clear; clc; close all;

w0 = 1;
alpha = 0.2*w0;
wd = sqrt(w0^2 - alpha^2);
=======

%% Delayed Unit Step Response

clear; clc; close all;

% HW Parameters
w_0 = 1;
alpha = 0.2*w_0;
>>>>>>> Stashed changes
dt = 0.1;
a = 5;

t = 0:dt:50;
<<<<<<< Updated upstream

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
=======
w_d = sqrt(w_0^2 - alpha^2);

% Unit Step
u = double(t >= a);

% Impulse Response
h = (1/w_d)*exp(-alpha*t).*sin(w_d*t);

% Exact Response
x_exact = zeros(size(t));
tau = t-a;
idx = t >= a;

x_exact(idx) = (1/w_0^2)*(1 - exp(-alpha*tau(idx)) .* (cos(w_d*tau(idx)) + (alpha/w_d)*sin(w_d*tau(idx))));

% Numerical Response
x = conv(u,h)*dt;
x_numerical = x(1:length(t));

% Plot
figure;
plot(t,u,t,x_exact,t,x_numerical);
xlabel('Time (s)');
ylabel('Amplitude');
title('Delayed Unit Step Response');
legend('u(t-a)','x exact','x numerical');
axis([0 50 0 2]);
grid on;
>>>>>>> Stashed changes
