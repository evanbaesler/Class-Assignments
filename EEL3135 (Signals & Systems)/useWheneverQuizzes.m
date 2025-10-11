k = -5:5;
f0 = 25;

A = [3, 0, 0, 6, 0, 10, 0, 6, 0, 0, 3];
phi = [pi/2, 0, 0, -pi/6, 0, 0, 0, pi/6, 0, 0, pi/2];

f = k * f0;

figure;
stem(f, A);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Stem Plot');
grid on;

figure;
stem(f, phi);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Phase Stem Plot');
grid on;

