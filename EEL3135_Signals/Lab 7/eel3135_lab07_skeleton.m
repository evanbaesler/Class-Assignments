%% QUESTION 1 COMMENTING

% DO NOT REMOVE THE LINE BELOW 
% MAKE SURE 'eel3135_lab05_comment.m' IS IN SAME DIRECTORY AS THIS FILE
clear; close all;
type('eel3135_lab07_comment.m')

%% QUESTION 2 FREQUENCY FILTERING 

%% 2(a) FILL IN CODE
% ----------- Fill in FreqResponse function down below -------------- ok

%% 2(b) CALCULATE FREQUENCY RESPONSE

w = -pi:(pi/100):pi;
b = [1, 2, 1];
H = FreqResponse(b, w);

figure
subplot(2,1,1);
plot(w, abs(H)); % Magnitude plot
subplot(2,1,2);
plot(w, angle(H)); % Phase plot

%% 2(c) EVALUATE FREQUENCY RESPONSE FOR CERTAIN FREQUENCIES

n = 0:59;
f = [0, pi/3, 9*pi/10];
H = FreqResponse(b, f);


for i = 1:length(f);
    disp('Freq w =');
    disp(f(i));
    disp('Magnitude = ');
    disp(abs(H(i)));
    disp('Phase = ');
    disp(angle(H(i)));
end

%% 2(d) COMPUTE AND PLOT OUTPUT
n = 0:59;
x = 1+cos((pi/3)*n) + cos((9*pi/10)*n + pi/2);
y = abs(H(1))*1 + abs(H(2))*cos((pi/3)*n + angle(H(2))) + abs(H(3))*cos((9*pi/10)*n + pi/2 + angle(H(3)));

figure;
subplot(2,1,1);
stem(n,x);
xlabel('Samples');
ylabel('x[n]');
subplot(2,1,2);
stem(n,y);
xlabel('Samples');
ylabel('y[n]');

%% 2(e) COMPARE WITH CONVOLUTION

convoluted = conv(x,b);
n_convoluted = 0:length(convoluted)-1;

figure;
subplot(2,1,1);
stem(n,x);
xlabel('Samples');
ylabel('x[n]');
subplot(2,1,2);
stem(n,y);
xlabel('Samples');
ylabel('y[n]')

%% 2(f) ANSWER QUESTION

% They should be basically identical, as multiplication in the frequency
% realm is the same as convolution in the time domain.


%% QUESTION 3

% DO NOT REMOVE THE LINE BELOW 
% MAKE SURE 'jingle.wav' IS IN SAME DIRECTORY AS THIS FILE
[x, fs] = audioread('jingle11k.wav');

%% 3(a) PLOT FREQUENCY RESPONSE


% <== ANSWER TO QUESTION ==>
% Low pass, it lets low frequency signals through and attenuates higher
% frequencies.


a = (1/9)*ones(1,9);    % Moving average filter
w = -pi:(pi/100):pi;
Ha = FreqResponse(a, w);

figure;
subplot(2,1,1);
plot(w,abs(Ha));
xlabel('Samples')
ylabel('Magnitude');
subplot(2,1,2);
plot(w,angle(Ha));
xlabel('Samples')
ylabel('Angle');

%% 3(b) APPLY FILTER

soundsc(x,fs);
pause(5);
x_a = conv(x,a);
soundsc(x_a,fs);
pause(5);

% <==== ANSWER TO QUESTION ====>
% It allows the low frequency components to go through and produces a
% mellower, softer sound. This is because it lowers the magnitude of the
% frequencies while attenuating high frequencies.
%
%% 3(c) PLOT FREQUENCY RESPONSE

b = [1 0 -4 0 6 0 -4 0 1];
Hb = FreqResponse(b, w);

figure;
subplot(2,1,1);
plot(w,abs(Hb));
xlabel('Samples')
ylabel('Magnitude');
subplot(2,1,2);
plot(w,angle(Hb));
xlabel('Samples')
ylabel('Angle');



% <==== ANSWER TO QUESTION ====>
% This is a bandpass because it cuts off very low and very high
% frequencies.
%
%% 3(d) APPLY FILTER

x_b = conv(x,b);
soundsc(x,fs);
soundsc(x_b,fs);

% <==== ANSWER TO QUESTION ====>
% It sounds rough, because it is removing low frequencies and keeping some
% high frequency components, which could introduce more noise.
%

%% 3(e) PLOT FREQUENCY RESPONSE

c = conv(b,b);
Hc = FreqResponse(c, w);

figure;
subplot(2,1,1);
plot(w,abs(Hc));
xlabel('Samples')
ylabel('Magnitude');
subplot(2,1,2);
plot(w,angle(Hc));
xlabel('Samples')
ylabel('Angle');

% <==== ANSWER TO QUESTION ====>
% This is a cascaded bandpass, which means the old band pass is magnified
% to be stronger than it was before, amplifying the old signals.
%
%% 3(f) APPLY FILTER

xc = conv(x,c);
soundsc(xc, fs);

% <==== ANSWER TO QUESTION ====>
% The filter still causes the signal to lose low frequency components,
% meaning it is sharply changing and with the amplification it sounds very
% loud and powerful, but not very clean.
%
%% ALL FUNCTIONS SUPPORTING THIS CODE %%

function H = FreqResponse(b,w)

    k = 0:length(b)-1;
    H = exp(-1j * (w.' * k)) * b.';

end
