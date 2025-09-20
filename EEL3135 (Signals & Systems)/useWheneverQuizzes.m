t = 0:1/1000:2

x_1 = 4*cos(20*pi*t+3*pi/4)
x_2 = 6*cos(20*pi*t-pi/2)

figure;
hold on;
plot(t,x_1);
plot(t,x_2);
plot(t,x_1+x_2);
plot(t,10*cos(20*pi*t));
legend;