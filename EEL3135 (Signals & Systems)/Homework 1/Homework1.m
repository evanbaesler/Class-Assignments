%% Question 1 %%

% Part 1
% Sketch 2 cos(5θ) for values of θ in the range −4π ≤ θ ≤ 4π

clear all;
close all;
clc;

figure;

A = 2;
fs = 1000;
dt = 1/fs;
theta = -4*pi:dt:(4*pi);
y = A*cos(5*theta);

plot(theta, y)
ylabel('Amplitude')
xlabel('Angle (Radians)')
title('Q1PA');

% Part 2

% Sketch cos(4πt) for values of t such that three full periods of the function are shown. 
% Label the periods clearly.

figure;

A = 1;
fs = 1000;
dt = 1/fs;
t = 0*pi:dt:1.5; % T = 2*pi/w = (2*pi)/(4*pi) = 1/2
y = A*cos(4*pi*t);

plot(t, y)
ylabel('Amplitude')
xlabel('Time (Seconds)')
title('Q1PB')

% Part 3

% Sketch cos(2πt/T0 − π/2) for values of t such that −T0 ≤ t ≤ T0, with T0 = 6.
% Label the horizontal axis in terms of the parameter T0.

figure;

A = 1;
fs = 100;
dt = 1/fs;
T0 = 6;
t = -T0:dt:T0; % T = 2*pi/w = (2*pi)/(4*pi) = 1/2
y = A*cos(((2*pi*t)/T0)-pi/2);

plot(t, y)
ylabel('Amplitude')
xlabel('Time (T0)')
title('Q1PC')

%% Question 2 %%

% A sinusoid has the following properties:
% • Amplitude = 3
% • Frequency = 8 Hz
% • DC offset = +1
% • At t=0, the signal equals its maximum value.

% Part 1

% Write the function x(t) in the form: x(t) = A cos(ω0t + φ) + D.

figure;

fs = 1000;
dt = 1/fs;

A = 3;
f = 8;
W0 = 2*f*pi;
D = 1;
t = 0:dt:0.5;
Phi = 0;

y = A*cos(W0*t + Phi) + D;

% Part 2

% Plot the signal in MATLAB for 0 <= t <= 0.5 seconds.

plot(t, y)
ylabel('Amplitude')
xlabel('Time (T0)')
title('Q2PA')

% Part 3

% Discuss how amplitude, frequency, and phase reveal themselves in your plot.

% Amplitude shows the maximum absolute value of the peaks/mins of the wave.
% Frequency is revealed because 1/8 = 0.125 seconds, our gap between peaks.
% Our phase is zero, so our cosine wave has cos(0) = 1A + D, or 3+1 = 4.

%% Question 3

% Part 1

zA = 3 + 4j;
zB = -2 + 5j;
% Rotating at 5 Hz

figure;
hold on;

f = 5;

compass(zA)
compass(zB)

zS = zA + zB; % This is 3-2 + 4j + 5j = 1 + 9j in rectangular.
compass(zS)
legend

hold off;

%% Question 4

% Part 3

fs = 1000;
dt = 1/fs;

A = 4;
f = 4;
W0 = 2*f*pi;
t = 0:dt:2;
Phi = pi;

figure;
hold on;

realcomp = 4*cos(W0*t+pi)
imagcomp = 4*sin(W0*t+pi)

plot(t, realcomp)
plot(t, imagcomp)
ylabel('x(t)')
xlabel('Time (s)')
legend;

hold off;

%% Question 5

% Part 2

fs = 1000;
dt = 1/fs;

A = 5.385;
f = 20;
W0 = 2*f*pi;
t = 0:dt:0.25;
Phi = 0.143;

waveSum1 = (5*cos(40*pi*t+(pi/6)) + 2*cos(40*pi*t - (pi/3)))

figure;
hold on;

plot(t, waveSum1)
plot(t, A*cos(W0*t+Phi))
ylabel('x(t)')
xlabel('Angle (Radians)')
legend('Original', 'Manually Calculated');

%% Question 6

% Part 3

fs = 1000;
dt = 1/fs;

A = 2;
f = 6;
W0 = 2*f*pi;
t = 0:dt:2;

waveSum2 = (2*cos(12*pi*t) + 2*cos(12*pi*t + (pi)))

figure;
hold on;

plot(t, waveSum2)
plot(t, (exp(j*12*pi) + exp(-1*j*12*pi) + exp(j*12*pi + pi) + exp(-1*j*12*pi + pi)))
ylabel('x(t)')
xlabel('Angle (Radians)')
legend('Original', 'Manually Calculated');

