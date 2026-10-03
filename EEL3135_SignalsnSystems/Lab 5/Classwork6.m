close all;
clear all;
clc;

A = 16;
f = 6/pi;
T = 1/f;
p = -pi/3;

t = 0:1/1000:2*T;

w1 = A*cos(2*pi*f*t + p);

plot(t, w1);
grid on;
xlabel('Time (Seconds)');
ylabel('Amplitude');