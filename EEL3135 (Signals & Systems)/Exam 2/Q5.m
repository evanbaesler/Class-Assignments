clc; close all; clear all;
fs = 25000; L = 8;
b = ones(1,L)/L;
a = 1;

% Frequency response
[H,w] = freqz(b,a,1000);
f_norm = fs*w/(2*pi);
figure;
plot(f_norm, abs(H));

A1 = 2.5;
f1 = 3000;
A2 = 3;
f2 = 2200;
fs = 10000;
t = 0:1/fs:0.01;
x1 = A1*cos(2*pi*f1*t);
x2 = A2*cos(2*pi*f2*t);
xtot = x1+x2;

figure;
xfilter = filter(b,a,xtot);
plot(t, xtot);
figure;
plot(t, xfilter);