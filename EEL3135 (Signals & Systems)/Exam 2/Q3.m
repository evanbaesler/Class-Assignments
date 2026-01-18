clc; close all; clear all;

load('SignalX_2024Q3');

N = length(X);
w = linspace(0, pi, N);
H = DTFT(X, w);
figure;
subplot(1,2,1);
plot(w, abs(H));

f_norm = w / pi;
subplot(1,2,2);
plot(f_norm, abs(H));

% w0 = f/(fs/2) -> fs = 5000

fs = 5000
f0 = 60;
w0 = 2*pi*f0/fs;

b = [1 -2*cos(377/5000) 1];
a = [1];

figure;
fvtool(b, a);

function H = DTFT(x,w)
    H = zeros(length(w),1);
    for nn = 1:length(x)
        H = H + x(nn).*exp(-1j*w.'*(nn-1));
    end
end