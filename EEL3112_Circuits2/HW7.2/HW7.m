clc; clear; close all;

%% Butterworth Filter Calculations

% 1) Transfer Function (From Exam 3 Cheat-Sheets)

% H(s) = Kwc^3 // (s+wc)(s^2 + s + wc^2)
% for wc = 2*pi*2000
%
%      = 100*wc^3 // (s^3 + 2*wc*s^2 + (2*wc^2)s + wc^3)


% 2) Plots

% Had to ask for help programming the symbolic section & group delay of this part:
% "How do I use an algebraic transfer function's frequency response in MATLAB?"
% "How do I plot group delay in MATLAB & show it's corner frequency's response?"

s = tf('s');
wc = 2*pi*2000;
H = 100*wc^3/(s^3 + 2*wc*s^2 + 2*wc^2*s + wc^3);

f = logspace(1,5,600);
w = 2*pi*f;

[mag, phase] = bode(H,w);
mag = squeeze(mag);
phase = squeeze(phase);

% Magnitude

figure(1);
subplot(4,1,1)
semilogx(f,20*log10(mag));
hold on;
plot(2000,37,'ro');
grid on;
title('3rd-Order Butterworth Low-pass Filter Magnitude');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

% Phase

subplot(4,1,2)
semilogx(f, phase);
hold on;
plot(2000, -135, 'ro')
grid on;
title('3rd-Order Butterworth Low-pass Filter Phase');
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');

% Group Delay
subplot(4,1,3)

gd = -gradient(unwrap(phase*pi/180),w);
semilogx(f,gd);
hold on;
plot(2000,interp1(f,gd,2000),'ro');
grid on;
title('3rd-Order Butterworth Low-pass Filter Group Delay');
xlabel('Frequency (Hz)');
ylabel('Group Delay(s)');

subplot(4,1,4);
step(H);
grid on;
title('3rd-Order Butterworth Low-pass Filter Step Response');
xlabel('Time');
ylabel('Amplitude');