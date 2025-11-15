%% QUESTION 1

% PART A

n = 0:63;

x = sin(0.4*pi*n);

h = [1, -1, 1];

y = conv(x,h);

% PART B

N = 66;

x6 = [x zeros(1, N-length(x))];
h6 = [h zeros(1, N-length(h))];

Y_fft = ifft(fft(x6) .* fft(h6));

% PART C

figure; stem(n,x); title('x[n]'); xlabel('n'); ylabel('x[n]');
figure; stem(0:length(h)-1,h); title('h[n]'); xlabel('n'); ylabel('h[n]');
figure; stem(0:length(y)-1,y); title('y[n] = x[n]*h[n]'); xlabel('n'); ylabel('y[n]');

% PART D
N = 4;
y_circ4 = ifft(fft(x,N) .* fft(h,N));
y_lin4 = y(1:N);

figure;
stem(0:N-1, y_lin4, 'b', 'filled'); hold on;
stem(0:N-1, y_circ4, 'r', 'filled');
xlabel('n'); ylabel('Amplitude');
title('Linear vs N=4 Circular Convolution');
legend('Linear','Circular');

for k = 0:N-1
    if y_lin4(k+1) ~= y_circ4(k+1)
        text(k, y_circ4(k+1)+0.05, ['n=', num2str(k)], 'Color','red');
    end
end

%% QUESTION 2

% H = (sin(5*w/2))/(5*sin(w/2))*e^(-j*2*w)
% |H| = abs(H)
% <H = angle(H)