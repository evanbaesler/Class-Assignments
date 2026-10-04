t = 0:0.01:120;
wave1 = 5+6*cos(pi/5*t-pi/6)-4*cos(pi/3*t+pi/4)+3*sin(pi/2*t);
wave2 = 5+6*cos(pi/5*t-pi/6);

figure;
hold on;
plot(t,wave1);
plot(t,wave2);
xlabel('Time (s)');
ylabel('Amplitude');