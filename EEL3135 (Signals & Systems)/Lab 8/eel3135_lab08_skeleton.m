%% QUESTION 1 COMMENTING

% DO NOT REMOVE THE LINE BELOW
% MAKE SURE 'eel3135_lab06_comment.m' IS IN THE SAME DIRECTORY AS THIS FILE
clear; close all; clc;
type('eel3135_lab08_comment.m')

%% QUESTION 2: DTFT OF COMMON FUNCTIONS 

T = pi/10;

n = 0:19;
w = linspace(-pi, pi, 500);

%% 2 (a) PLOT DTFT
% ALSO ANSWER: Is the data predominantly low frequency, high frequency, 
%              or neither?

%% (a) x[n] = delta[n]
x_a = [1, zeros(1,19)];  % δ[n], impulse at n = 0
H_a = DTFT(x_a, w);

figure;
subplot(3,1,1); stem(n, x_a); title('x_a[n] = d[n]'); xlabel('n'); ylabel('x_a[n]');
subplot(3,1,2); plot(w, abs(H_a)); title('|X_aw|'); xlabel('w'); ylabel('Magnitude');
subplot(3,1,3); plot(w, angle(H_a)); title('Phase of X_a'); xlabel('w'); ylabel('Phase');

disp('(a) delta[n] is neither high or low frequency.');

%% 2 (b) PLOT DTFT
% ALSO ANSWER: Is the data predominantly low frequency, high frequency, 
%              or neither?

x_b = [zeros(1,3), 1, zeros(1,16)];  % δ[n-3]
H_b = DTFT(x_b, w);

figure;
subplot(3,1,1); stem(n, x_b); title('x_b[n] = d[n]'); xlabel('n'); ylabel('x_b[n]');
subplot(3,1,2); plot(w, abs(H_b)); title('|X_bw|'); xlabel('w'); ylabel('Magnitude');
subplot(3,1,3); plot(w, angle(H_b)); title('Phase of X_b'); xlabel('w'); ylabel('Phase');
disp('(b) delta[n-3] is neither low nor high frequency.');

%% 2 (c) PLOT DTFT
% ALSO ANSWER: Is the data predominantly low frequency, high frequency, 
%              or neither?

x_c = (1/2).^n;  
H_c = DTFT(x_c, w);

figure;
subplot(3,1,1); stem(n, x_c); title('x_c[n] = d[n]'); xlabel('n'); ylabel('x_c[n]');
subplot(3,1,2); plot(w, abs(H_c)); title('|X_cw|'); xlabel('w'); ylabel('Magnitude');
subplot(3,1,3); plot(w, angle(H_c)); title('Phase of X_c'); xlabel('w'); ylabel('Phase');
disp('(c) This signal is predominantly low frequency.');

%% 2 (d) PLOT DTFT
% ALSO ANSWER: Is the data predominantly low frequency, high frequency, 
%              or neither?

x_d = (-1/2).^n;  
H_d = DTFT(x_d, w);

figure;
subplot(3,1,1); stem(n, x_d); title('x_d[n] = d[n]'); xlabel('n'); ylabel('x_d[n]');
subplot(3,1,2); plot(w, abs(H_d)); title('|X_cw|'); xlabel('w'); ylabel('Magnitude');
subplot(3,1,3); plot(w, angle(H_d)); title('Phase of X_d'); xlabel('w'); ylabel('Phase');
disp('(d) This signal is predominantly high frequency.');

%% 2 (e) PLOT DTFT
% ALSO ANSWER: Is the data predominantly low frequency, high frequency, 
%              or neither?

x_e = [ones(1,5), zeros(1,15)];  
H_e = DTFT(x_e, w);

figure;
subplot(3,1,1); stem(n, x_e); title('x_e[n] = d[n]'); xlabel('n'); ylabel('x_e[n]');
subplot(3,1,2); plot(w, abs(H_e)); title('|X_ew|'); xlabel('w'); ylabel('Magnitude');
subplot(3,1,3); plot(w, angle(H_e)); title('Phase of X_e'); xlabel('w'); ylabel('Phase');
disp('(e) This signal contains both low and high frequencies.');

%% 2 (f) PLOT DTFT
% ALSO ANSWER: Is the data predominantly low frequency, high frequency, 
%              or neither?

x_f = cos(pi/4 * n);  
H_f = DTFT(x_f, w);

figure;
subplot(3,1,1); stem(n, x_f); title('x_f[n] = d[n]'); xlabel('n'); ylabel('x_f[n]');
subplot(3,1,2); plot(w, abs(H_f)); title('|X_fw|'); xlabel('w'); ylabel('Magnitude');
subplot(3,1,3); plot(w, angle(H_f)); title('Phase of X_f'); xlabel('w'); ylabel('Phase');
disp('(f) This signal is predominantly low frequency.');


%% QUESTION 3: DTFT PROPERTIES

%% 3(a) PLOT DTFT
% ALSO ANSWER: describe how each system changes the frequency domain 


%% 3(b) PLOT DTFT
% ALSO ANSWER: describe how each system changes the frequency domain 


%% 3(c) PLOT DTFT
% ALSO ANSWER: describe how each system changes the frequency domain 


%% 3(d) PLOT DTFT
% ALSO ANSWER: describe how each system changes the frequency domain 


%% 3(e) PLOT DTFT
% ALSO ANSWER: describe how each system changes the frequency domain 




%% QUESTION 4: NULLING FILTER

% DO NOT REMOVE THE LINE BELOW
% MAKE SURE 'Noisy.wav' IS IN THE SAME DIRECTORY AS THIS FILE
[x, fs] = audioread('Noisy.wav');


%% 4(a) EVALUATE DTFT OF INPUT SIGNAL


%% 4(b) IDENTIFY FREQUENCY

% <== ANSWER TO QUESTION ==>
%
%

%% 4(c) DESIGN FILTER



%% 4(d) APPLY FILTER

% <== ANSWER TO QUESTION ==>
%
%

%% 4(e) LISTEN TO AUDIO



%% ALL FUNCTIONS SUPPORTING THIS CODE 

function H = DTFT(x,w)
%  ===> Describe function here <===
  
    H = zeros(length(w),1);
    for nn = 1:length(x)
        H = H + x(nn).*exp(-1j*w.'*(nn-1));
    end
    
end

