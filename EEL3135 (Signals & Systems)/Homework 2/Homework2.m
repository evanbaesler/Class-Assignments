clear all; close all; clc;

fs = 2400;
f1 = 313; f2 = 935;
w1 = 2*pi*f1/fs;
w2 = 2*pi*f2/fs;

a_vals = 0.01:0.01:0.25;  % candidate a values
colors = jet(length(a_vals));

Y = zeros(1024,length(a_vals));  % preallocate for magnitude response
W = linspace(0,pi,1024);         % frequency vector (rad/sample)

for k = 1:length(a_vals)
    figure; grid on;
    xlabel('Normalized Frequency (rad/sample)');
    ylabel('|H(e^{j\omega})|');
    title('FIR Magnitude Response for Different a');
    a = a_vals(k);
    b = [a; (0.6/a-1); -5*a; 0; (0.44-a); (0.06-a); (-10*a+0.3); (-0.06+a); (10*a-0.54)];
    H = freqz(b,1,W);        % complex frequency response
    Y(:,k) = abs(H);          % store magnitude
    plot(W, Y(:,k), 'Color', colors(k,:), 'DisplayName',['a=',num2str(a)]);
end

xline(w1,'r--','f1=313Hz');
xline(w2,'g--','f2=935Hz');
legend show