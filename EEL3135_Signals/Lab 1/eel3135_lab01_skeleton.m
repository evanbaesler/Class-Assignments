%% PREAMBLE
% DO NOT REMOVE THE LINE BELOW
clear;


%% QUESTION 1: TEAM! 
% =======================
% Thomas Hiendel

%% QUESTION 2: COMMENTING
% =======================

% Copy and comment every line of the following MATLAB script. Say what
% each line is doing in your comment. Explain each MATLAB line by using
% no more than one comment line, as done in the first line below. Run and
% publish the script:
a=zeros(1,5); % Generate and print a 1x5 row vector of zeros
b=ones(3,2); % Generate a 3x2 grid of ones
c=size(a); % Finds the size of a, which is 1 5
abs([-5.2 , 3]); % Finds absolute of -5.2, 3, which is 5.2000 3.0000
floor(3.6); % Rounds 3.6 down to 3
d=[1:-3.5:-9]; % Starts at 1 stepping in intervals of -3.5 to/before -9
f=d(2); g=sin(pi/2); % Sets f to -2.5, g to 1
K=[1.4, 2.3; 5.1, 7.8]; % Declares two row, two column 2D matrix
m=K(1,2); % Sets m to the first row, second column (2.3)
n=K(:,2); % Sets n to the second column, 2.3 and 7.8
comp = 3+4i; % Sets comp to the real and imaginary components
real(comp) % Takes the real component of comp (3)
imag(comp) % Takes the imaginary component of comp (4)
abs(comp) % Takes the absolute value of the comp (5)
angle(comp) % Finds the angle of comp (0.9273)
disp('haha, MATLAB is fun'); % Prints: haha, MATLAB is fun
3^2; % Squares 3 (9)
4==4; % Does a boolean check (True)
[2==8 3~=5]; % Does two boolean checks in a matrix [False True]
x=1:2:8; % Sets x to [1 3 5 7]
y=[5 7 6 8]; % Sets y to [5 7 5 8]

q = zeros(10,1); % Sets q to 10 rows and one column of zeros
for ii = 1:10 % Sets ii to 1, stepping up to 10 in intervals of 1
     q(ii) = ii^2; % Sets row ii to ii^2
end
figure(1021); % Creates empty figure meeting
stem(x,y) % Makes a stem plot with our x and y values defined earlier
hold on; % Prevents new plots from clearing out old plots
plot(x,y, 'k', 'linewidth', 2) % Draws a solid black line
plot(x,y,'+r', 'markersize', 20) % Draws red signs at the coordinate pairs
hold off; % Disables hold above
xlabel('Horizontal Axis') % Labels x axis as 'Horizontal Axis'
ylabel('Vertical Axis') % Labels y axis as 'Vertical Axis'



%% QUESTION 3: PLOTTING
% =======================

%% 3(a) PLOT RESULT
figure(1)
vect1 = [0 pi/4 2*pi/4 3*pi/4 4*pi/4 5*pi/4 6*pi/4 7*pi/4];
vect2 = cos(vect1);
stem(vect1, vect2)
xlabel('Angle (Radians)')
ylabel('Amplitude')

%% 3(b) PLOT RESULT
figure(2)
theta = 0:pi/20:3*pi;
y = cos(theta);
plot(theta, y)
xlabel('Angle (Radians)')
ylabel('Amplitude')

%% 3(c) PLOT RESULT

figure(3);
time = -3:0.0001:3;
y = cos(20*pi*time);
plot(time, y)
xlabel('Time (Seconds)')
ylabel('Amplitude')

%% QUESTION 4: COMPLEX ROOTS
% =======================

%% 4(a) WRITE FUNCTION IN SEPARATE FILE (TEMPLATE PROVIDED)
% type('myroots.m')

% function r = myroots(n, a)
% myroots: Find all the nth roots of the complex number a
%
% Input Args:
% n: a positive integer specifying the nth roots
% a: a complex number whose nth roots are to be returned
%
% Output:
% r: 1xn vector containing all the nth roots of a

% A = abs(a); % Find the magnitude of the complex number
% phi = angle(a); % Find the phase (phi) of the complex number
% k = [0:1:n-1]; % Setting k to given value
% r = A^(1/n)*exp(j*(phi + 2*pi*k)/n) % Using root solve formula

% end

%% 4(b) ANSWER QUESTION
help myroots % prints the documentation of the myroots function

%% 4(c) OUTPUT RESULTS
r = myroots(9,2)
r = myroots(23,-j)


