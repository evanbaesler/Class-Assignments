clear all;
clc;
close all;

% Part 1
hold on;
disp('Part 1')
y1 = exp(i * pi/3)
mag = abs(1/2 + j*sqrt(3)/2)
ang = angle(1/2 + sqrt(3)/2)
compass(y1)

y2 = 2*exp(-j*pi/4)
compass(y2)

y3 = 6*cos(5*pi/6);
compass(y3)

legend('a','b','c')

% Part 2
disp('Part 2')
x1 = 3.5 * exp(i * pi/5);
x2 = 2.5 * exp(i*2*pi/3);

x3 = x1+x2;

amp = abs(x3);
ang = angle(x3)

% hold on;
% compass(x1)
% compass(x2)
% compass(x3)
