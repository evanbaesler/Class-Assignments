clc; clear all; close all;

load('Exam2025_Bonus.mat');
load('SignalX_2025Q3.mat');

% x = [1.5 3 4.5]
% h = [2 1.4 2.980 2.098 7.469 5.228 3.660 2.5562 1.793 1.255 0.879 0.615 0.431 0.301 0.211 0.148 0.103]
% y = conv(x,h);
% 
% length(y)
% 
% stem(0:length(y)-1, y);

% Q4F
% syms z;
% pi_new = sym(pi);
% expr = ((z-1.8*exp(1j*pi_new))*(z-1.8*exp(-1j*pi_new/6))*(z-exp(1j*pi_new/3))*(z-exp(1j*2*pi_new/3))*(z+1)*(z-exp(-1j*pi_new/3))*(z-exp(-1j*2*pi_new/3))/(z*z*z*z*z));
% expand(expr)

% Q5

f1 = 320;
A1 = 4;
f2 = 1500;
A2 = 3;
fs = 10000;

t = 0:1/fs:.01-1/fs;

x1 = A1*cos(2*pi*f1*t);
x2 = A2*cos(2*pi*f2*t);
xtot = x1+x2;

figure;
plot(t,xtot);

L = 7;
b = [1 1 1 1 1 1 1]/7;
a = 1;
figure;
freqz(b,a,1000)