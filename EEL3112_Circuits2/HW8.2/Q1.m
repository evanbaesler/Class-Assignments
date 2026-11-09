clc; clear all; close all;

%% HW 8 

%% Q1 4th Order Butterworth vs Bessel LPF 

% AI NOTICE:
% I had AI help with some of the programming below, particularly group
% delay programming & improving plots to be more legible 
% (adding markers for important points, colors & legends)

%% Butterworth Form Per Exam 3 Cheatsheet:
% K / [(s^2+0.765s+1)(s^2+1.848s+1)], plugging in our frequency:

% Kw^4 / [(s^2+0.765ws+w^2)(s^2+1.848ws+w^2)]
% Where w = cutoff frequency, or 2pi * 100 = 628 rad/s and K = 10

% Which gives us:
% 1.55 * 10^12 / [(s^2 + 480.42s + 394384)(s^2 + 1160.5s + 394384)]

N = 4;
fc = 100;
wc = 2*pi*fc;
K = 10;

[BWNumerator, BWDenominator] = butter(N, wc, 's');

BWNumerator = BWNumerator * K;

BWTF = tf(BWNumerator, BWDenominator);

disp(BWTF)

%% Bessel Form


[BesselNumerator, BesselDenominator] = besself(N, wc);

BesselNumerator = BesselNumerator * K;

BesselTF = tf(BesselNumerator, BesselDenominator);

disp(BesselTF)

% Which gives:
% (1.559*10^12) / (s^4 + 1962.8s^3 + 1.7337*10^6s^2 + 7.9403*10^8s +
% 1.5585*10^11)


% DC gain is 10
% 1.5585e12 / 1.5585e11 = 10

% Frequency range
f = logspace(0,5,2000);
w = 2*pi*f;

% Get frequency response for both filters
[BW_H, ~] = freqs(BWNumerator, BWDenominator, w);
[BE_H, ~] = freqs(BesselNumerator, BesselDenominator, w);

% Find magnitude
BW_Mag = 20*log10(abs(BW_H));
BE_Mag = 20*log10(abs(BE_H));

% Find phase
BW_Phase = unwrap(angle(BW_H))*180/pi;
BE_Phase = unwrap(angle(BE_H))*180/pi;

% Plot magnitude
figure;
semilogx(f, BW_Mag, 'b', f, BE_Mag, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Response');
legend('Butterworth', 'Bessel');
xlim([1 1e5]);
ylim([-120 40]);

% Plot phase
figure;
semilogx(f, BW_Phase, 'b', f, BE_Phase, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('Phase Response');
legend('Butterworth', 'Bessel');
xlim([1 1e5]);

% Group delay
BW_GroupDelay = -gradient(unwrap(angle(BW_H)), w);
BE_GroupDelay = -gradient(unwrap(angle(BE_H)), w);

% Change to milliseconds
BW_GroupDelay = BW_GroupDelay * 1000;
BE_GroupDelay = BE_GroupDelay * 1000;

% Plot group delay
figure;
semilogx(f, BW_GroupDelay, 'b', ...
         f, BE_GroupDelay, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Group Delay (ms)');
title('Group Delay');
legend('Butterworth', 'Bessel');
xlim([1 1e5]);

% Time range for step response
t = linspace(0, 0.05, 2000);

% Get step response
[BW_Step, BW_Time] = step(BWTF, t);
[BE_Step, BE_Time] = step(BesselTF, t);

% Plot step response
figure;
plot(BW_Time, BW_Step, 'b', ...
     BE_Time, BE_Step, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Time (seconds)');
ylabel('Output');
title('Step Response');
legend('Butterworth', 'Bessel');

%% Comparisons:

% Magnitude: Butterworth has a sharp knee for the wc dropoff.
% Phase Response: Butterworth has a slower rise and fall for phase response.
% Group Delay: Butterworth has a sharp rise towards the wc versus a smooth fall.
% Step Response: Butterworth rises and oscillates versus a smooth rise.

%% Q2

% A BW bandpass with:
N = 5;
K = 1;

fc1 = 250e3;
B = 1.5e6; % Bandpass frequencies range (fc1 + B = fc2)

fc2 = fc1 + B; % Allows 250kHz to 1.75MHz

wc1 = fc1*2*pi;
wc2 = fc2*2*pi;

% Center frequency
f0 = sqrt(fc1*fc2); % The squareroot of our cutoffs product is our center frequency.

% Design Butterworth bandpass filter
[BPFNumerator, BPFDenominator] = butter(N, [wc1 wc2], 's');

% Transfer function
BPFTF = tf(BPFNumerator, BPFDenominator);

disp('Butterworth Bandpass Transfer Function:')
disp(BPFTF)

% Frequency range
% Creates 2000 logarithmic values between 10^3 and 10^8
f = logspace(3,8,2000);
w = 2*pi*f;

% Frequency response
[BPF_H, ~] = freqs(BPFNumerator, BPFDenominator, w);

% Magnitude in dB
BPF_Mag = 20*log10(abs(BPF_H));

% Phase in degrees
BPF_Phase = unwrap(angle(BPF_H))*180/pi;

% Magnitude plot
figure;
semilogx(f, BPF_Mag, 'b', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('5th Order Butterworth BPF - Magnitude');
xline(fc1, '--r', 'fc1');
xline(fc2, '--g', 'fc2');

% Phase plot
figure;
semilogx(f, BPF_Phase, 'b', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('5th Order Butterworth BPF - Phase');
xline(fc1, '--r', 'fc1');
xline(fc2, '--g', 'fc2');

% Display cutoff and center frequencies
fprintf('Lower cutoff frequency = %.2f kHz\n', fc1/1000);
fprintf('Upper cutoff frequency = %.2f MHz\n', fc2/1e6);
fprintf('Center frequency = %.2f kHz\n', f0/1000);

