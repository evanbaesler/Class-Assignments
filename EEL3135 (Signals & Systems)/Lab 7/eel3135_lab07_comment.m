
%% USER-DEFINED VARIABLES

w = -pi:(pi/100):pi;
% <-- Answer: Creates one full interval (2pi interval)
% 

%% HIGHPASS FILTER

% FREQUENCY RESPONSE
H2 = (1-exp(-1j*w*1));
% <-- Answer: What is the difference equation for this frequency response?

% h[n] = delta[n] - delta[n-1]

% PLOT
figure;
subplot(2,1,1)
plot(w,abs(H2)); % Takes the real magnitude
grid on;
title('Magnitude Response')
xlabel('Normalized Radian Frequency');
ylabel('Amplitude');
subplot(2,1,2)
plot(w,angle(H2)); % Finds the phase angle
grid on;
title('Phase Response')
xlabel('Normalized Radian Frequency');
ylabel('Phase');

% Answer: If you input a DC value into a highpass filter, what will be
% its amplitude?

%  0 because the frequency is infinitely low, only lets high freq through.


