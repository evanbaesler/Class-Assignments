%% Second Order Impulse Response Plot

clear; clc; close all;

% HW Parameters
w_0 = 1;
alphas = [0, 0.2, 1, 5];
numerator = 1;

%% Calculate Four Impulse Responses

% Empty Plot
figure();
hold on;

% Our function is s^2 + 2 * alpha + w_0^2
% So, our denominator coefficients are:
% 1, 2 * alpha, w_0^2

for i = 1:length(alphas)
    alpha = alphas(i);
    denominator = [1 2*alpha w_0^2];
    H = tf(numerator, denominator); % tf creates a transfer function from our numerator and denominator.
    impulse(H); % takes the impulse of our tf
end

xlabel('time (s)');
ylabel('Amplitude');
title('Impulse Response for Second-Order Systems');
axis([0, 50, -1, 1]);
legend('\alpha = 0', '\alpha = 0.2', '\alpha = 1', '\alpha = 5');
grid on;
hold off;

%% Calculate Step Responses

% Empty Plot 2
figure(2);
hold on;

for i = 1:length(alphas)
    alpha = alphas(i);
    denominator = [1 2*alpha w_0^2];
    H = tf(numerator, denominator);
    step(H);
end

xlabel('time (s)');
ylabel('Amplitude');
title('2nd Order Step Response');
axis([0, 50, -1, 2])
legend('\alpha = 0', '\alpha = 0.2', '\alpha = 1', '\alpha = 5');
grid on;
hold off;