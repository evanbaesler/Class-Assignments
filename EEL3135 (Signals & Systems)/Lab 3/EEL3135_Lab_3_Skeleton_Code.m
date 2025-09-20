% EEL3135 Lab 3
% Name: Evan Baesler
% UFID: 31151619

% Part 1 - 
% Calculate the phasors using Matlab in polar form for each set of Fourier coefficients.
%The code should use a for-loop where the amplitude and phase are held in the vectors, Amp and Phi (provide
%the code and solution).
%Amp = [A−9, A−8, A−7, A−6, A−5, A−4, A−3, A−2, A−1, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9]
%Phi = [ϕ−9, ϕ−8, ϕ−7, ϕ−6, ϕ−5, ϕ−4, ϕ−3, ϕ−2, ϕ−1, ϕ0, ϕ1, ϕ2, ϕ3, ϕ4, ϕ5, ϕ6, ϕ7, ϕ8, ϕ9]

data =  [3-2.5*i, 0+0*i, 2-2.5*i, 0+0*i, 0+0*i, 3-3*i, 0+0*i, 8-5*i, 0+0*i, 5, 0+0*i, 8+5*i, 0+0*i, 3+3*i, 2+2.5*i, 0+0*i, 2+2.5*i, 0+0*i, 3+2.5*i]

N = length(data);
Phasor = zeros(1, N);
Amp = zeros(1,N);
Phi = zeros(1,N);

for count = 1:N
    Amp(count) = abs(data(count));
    Phi(count) = angle(data(count));
    Phasor(count) = Amp(count) * exp(1j * Phi(count));
end

% Part 2 -
% Provide the MatLab code for the time vector, "t" that will be used in the Fourier synthesis equation. 
% This will be held as a vector and used to build your sinusoid components.
fs = 80
dt = 1/fs
t = 0:dt:1-dt

% Part 3 - 
% Create another for loop that will loop through the ak fourier coefficients which will create each sinusoidal
% component Xk(t). 
% These sinusoidal components will be held in a Matrix, M(K, N), where k is the number of
% fourier coefficients and N is the length of the signal.

fourierCount = 19;
N = length(t);
K = 19;
M = zeros(K,N);
f0 = 4;

for I = 1:19
    ak = Phasor(I);
    M(I, :) = real(ak * exp(1j * 2 * pi * K * f0 * t));
end

% Part 4 - 
% Provide the code for how the Fourier synthesis will be implemented.

netWave = sum(M,1);


figure;
plot(t, netWave)

% Part 5 - 
% Plot 3 rows of the Matrix that are tied to an ak. Describe the signals for each plot and its relationship to the
%components of a sinusoidal wave.
% plot ?
% Part 6 -
% Add the Matrix rows to then construct the X(t)Sum signal, using the matlab function "sum”.
% X_t_sum

% Part 7 - 
% What is the DC offset of the synthesized signal and how does this relate to the fourier coefficients?

% Part 8 - 
% Provide a plot of the synthesized signal. Use the grid on feature on the plot and describe what the graph
%represents.
% plot ?