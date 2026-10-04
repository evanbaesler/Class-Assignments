clear all; close all; clc;

R=10000;
Rd=200000;
Rg=200000;
C=1.59*10^-9;

num = [1/(Rg*C) 0];
den = [1 1/(Rd*C) 1/(R^2 * C^2)];
sys = tf(num, den);
bode(sys);