clc; clear; close all;
% 1. Filter Specifications
n     = 5;              % Filter order (prototype)
f_c1  = 250e3;          % Lower cutoff frequency (Hz)
beta  = 1.5e6;          % Bandwidth (Hz)
K     = 1;              % Passband Gain
% Calculate upper cutoff and center frequencies
f_c2     = f_c1 + beta;         % Upper cutoff
f_center = sqrt(f_c1 * f_c2);   % Geometric center frequency
% Convert frequencies to rad/s for analog design
w_band = 2*pi*[f_c1, f_c2];
% 2. Design Butterworth Bandpass Filter
% Note: An n-th order BPF results in a 2*n order transfer function
[num, den] = butter(n, w_band, 's');   
H_bpf = tf(K * num, den);
% 3. Frequency Response Calculation
f = logspace(4, 7, 2000); % 10 kHz to 10 MHz
w = 2*pi*f;
H_resp = squeeze(freqresp(H_bpf, w));
% 4. a. Display Results
fprintf('--- Filter Analysis Results ---\n');
fprintf('Lower Cutoff (fc1):      %8.2f kHz\n', f_c1/1e3);
fprintf('Upper Cutoff (fc2):      %8.2f kHz\n', f_c2/1e3);
fprintf('Bandwidth (beta):        %8.2f kHz\n', beta/1e3);
fprintf('Center Frequency (fo):   %8.2f kHz\n', f_center/1e3);
fprintf('\nTransfer Function:\n');
H_bpf
% 5. b. Plotting the Bode Plot
figure('Color', 'w', 'Position', [100, 100, 800, 600]);
% Magnitude Response
subplot(2,1,1);
semilogx(f, 20*log10(abs(H_resp)), 'b', 'LineWidth', 2);
grid on; hold on;
ylabel('Magnitude (dB)');
title(['Bode Magnitude Reponse']);
xlim([1e4 1e7]); ylim([-80 5]);
% Phase Response
subplot(2,1,2);
semilogx(f, angle(H_resp)*180/pi, 'k', 'LineWidth', 1.5);
grid on;
ylabel('Phase (deg)');
xlabel('Frequency (Hz)');
xlim([1e4 1e7]);