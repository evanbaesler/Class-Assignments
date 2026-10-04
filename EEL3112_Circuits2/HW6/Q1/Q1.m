% Plot impulse and step responses of our canonical second-order system
clear; clc; close all;

% System parameters
omega_0 = 1;
alphas = [1, 0.2, 0, 5];
K = 1;
num = K;

% Plot impulse responses
figure();
hold on;
for i = 1:length(alphas)
    alpha = alphas(i);
    den = [1 2*alpha omega_0];    % denominator [s^2 + 2*alpha*s + omega_0^2]
    H = tf(num, den);
    impulse(H);
end
xlabel('t(s)');
ylabel('Amplitude');
title('Impulse Response for Second-Order Systems');
axis([0, 50, -1, 2]);
legend('alpha = 1', 'alpha = 0.2', 'alpha = 0', 'alpha = 5');
grid on;
hold off;

% Plot step responses
figure(2);
hold on;
for i = 1:length(alphas)
    alpha = alphas(i);
    den = [1 2*alpha omega_0];    % denominator [s^2 + 2*alpha*s + omega_0^2]
    H = tf(num, den);
    step(H);
end
xlabel('t(s)');
ylabel('Amplitude');
title('Step Response for Second-Order Systems');
axis([0, 50])
legend('a = 1', 'a = 0.2', 'a = 0', 'a = 5');
grid on;
hold off;