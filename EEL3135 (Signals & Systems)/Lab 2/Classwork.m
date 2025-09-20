% Question #1
% Part A
figure(1)
theta = -2*pi:pi/200:2*pi; 
y = 2*cos(5*theta); 
plot(theta, y) 
xlabel('Angle (Radians)') 
ylabel('Amplitude')
legend('A')
hold on;

% Part B
theta = theta - 1;
plot(theta, y)
xlabel('Angle (Radians)') 
ylabel('Amplitude')
legend('B')