clc; close all; clear all;

%% Question 1
% a
n = 0:63;
x = sin(0.4*pi*n);
h = [1 -1 1];

y = conv(x,h);
% Length is length x + h - 1 = 64 + 3 - 1 = 66

% b
N_fft = length(x) + length(h) - 1;  % 66
x_pad = [x zeros(1, N_fft - length(x))];
h_pad = [h zeros(1, N_fft - length(h))];

y_fft = ifft(fft(x_pad).*fft(h_pad));

% c
figure;
stem(n,x);
title('x[n]');

figure;
stem(0:2,h);
title('h[n]');

figure;
stem(0:66-1, y);
title('y[n]');

% d
N = 4;
xN = x(1:N);
hN = [h zeros(1,N-length(h))];
y_circ = ifft(fft(xN).*fft(hN));

figure; stem(0:66-1, y);
hold on;
stem(0:N-1, y_circ);
title('Linear vs Circular Conv.');
legend('linear','circular');
xlabel('n'); ylabel('Amplitude');

%% Question 2

% a
h = ones(1,5)/5; % moving average so we have five coefficients of 1/5.
w = linspace(-pi,pi,1000);
H = freqz(h,1,w);

magH = abs(H);
phaseH = angle(H);

% b
% Magnitude = 0 when sin(5w/2) = 0 and 5sin(w/2) ~= 0 (or sin(w/2))
% sin(5w/2) = 0 when w = +-2pi/5 or +-4pi/5
% Is a low pass because h = [1/5 1/5 1/5 1/5 1/5], moving average

% c
A = 1;
w0 = pi/3;
phi = 0;

n = 0:4;
H_w0 = sum(h .* exp(-1j*w0*n));
y_amp = A * abs(H_w0);
y_phase = phi + angle(H_w0);

% d
figure;
plot(w,magH);
title('magH)');
xlabel('w');
ylabel('Magnitude');

figure;
plot(w,phaseH);
title('phaseH');
xlabel('w');
ylabel('Phase');

% e

% If 130-210 Hz were considered a mid-high frequency based on f_s, we would
% assume it attenuates out from the moving average (low-pass) filter.

%% Question 3

% a 
h1 = [1/3 1/3 1/3];
h2 = [1 -1];

% b
w = linspace(-pi, pi, 1000);

hT = conv(h1,h2);
disp('hT = ')
disp(hT);

H1 = (1/3) * (1 + exp(-j*w) + exp(-j*2*w));
H2 = 1 - exp(-j*w);

HT = H1 .* H2;
% Algebraically simplifies to 
% 1-e^(-jw) + e^(-jw) - e^(-j2w) + e^(-jew) - e^(-j3w) which is
% 1 - e^(-j3w)

% (c) Steady-state output for x[n] = cos(pi/3 n)
hT = [1/3 0 0 -1/3];
w0 = pi/3;

nH = 0:length(hT)-1;
HT_w0 = sum(hT .* exp(-1j * w0 * nH));

out_amp = abs(HT_w0);
out_phase = angle(HT_w0);

disp(['Output amplitude: ', num2str(y_amp)]);
disp(['Output phase: ', num2str(y_phase)]);

% d
omega = linspace(-pi, pi, 1000);
nH = 0:length(hT)-1;

HT = zeros(1,length(omega));
for k = 1:length(omega)
    HT(k) = sum(hT .* exp(-1j * omega(k) * nH));
end

figure;
plot(omega, abs(HT));
title('Magnitude');
xlabel('w'); ylabel('Magnitude');
grid on;

figure;
plot(omega, angle(HT));
title('Phase');
xlabel('w'); ylabel('Phase');
grid on;

%% Question 4

% a
h = [1 -1];
omega = linspace(-pi, pi, 1000);
nH = 0:length(h)-1;

H = zeros(1,length(omega));
for k = 1:length(omega)
    H(k) = sum(h .* exp(-1j*omega(k)*nH));
end

magH = abs(H);
phaseH = angle(H);

% b
% Low frequencies are attenuated and higher frequencies are passed, so we
% have a high-pass filter.

% c
figure;
plot(omega, magH);
title('Phase');
xlabel('w'); ylabel('Magnitude');
grid on;

figure;
plot(omega, phaseH);
title('Phase');
xlabel('w'); ylabel('Phase');
grid on;