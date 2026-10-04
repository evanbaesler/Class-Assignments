% % Parameters
% fs = 90;           % use the minimum sampling frequency (Hz)
% T = 1;             % 1 second duration
% N = fs * T;        % number of samples (integer)
% n = 0:N-1;
% t = n / fs;
% 
% % Continuous-time signal sampled
% x = 2.5*cos(2*pi*15*t) + 5*cos(2*pi*45*t + pi);
% 
% % FFT and freq vector (shifted so 0 is center)
% X = fftshift(fft(x));
% f = linspace(-fs/2, fs/2, N);
% 
% % Plot magnitude (principal alias = -fs/2 .. fs/2)
% figure;
% plot(f, abs(X));
% xlabel('Frequency (Hz)');
% ylabel('|X_s(f)|');
% title('Principal alias (baseband) of sampled x[n], f_s = 90 Hz');
% grid on;
% xlim([-fs/2 fs/2]);
% 
% % Mark expected impulse locations
% hold on;
% stem([ -15, 15, -45, 45 ], [ max(abs(X))*0.8, max(abs(X))*0.8, max(abs(X))*0.9, max(abs(X))*0.9 ], 'r');
% legend('|FFT|','expected impulses (\pm15,\pm45 Hz)');

n = -1:4;                          % n-values for x[n]
x = [0, 0, 2, -2, 6, 0];           % x[n] values
h = [0.125, 0.375, 0.25, 0.25];    % h[n] from delta terms
y = conv(x, h);                     % convolution
n_y = n(1) : n(end) + length(h) - 1;   % n from -1 to 6
figure;
stem(n_y, y, 'filled')
xlabel('n')
ylabel('y[n]')
title('Convolution of x[n] with h[n]')
