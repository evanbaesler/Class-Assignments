% Step 1: Define the signal x[n] = 13δ[n] + 6δ[n-2]
n = -10:10;  % Time index n
x = 13 * (n == 0) + 6 * (n == 2);  % Impulses at n=0 and n=2

% Step 2: Define frequency grid from -pi to pi
omega = linspace(-pi, pi, 1000);  % Frequency range from -π to π

% Step 3: Numerically compute the DTFT using the truncated sum
X_truncated = zeros(size(omega));
for k = 1:length(omega)
    X_truncated(k) = sum(x .* exp(-1j * omega(k) * n));  % DTFT sum
end

% Step 4: Compute the analytical DTFT
X_analytical = 13 + 6 * exp(-1j * 2 * omega);  % From the expression

% Step 5: Plot the magnitude of the numerical DTFT
figure;
plot(omega, abs(X_truncated));

% Step 6: Plot the magnitude of the analytical DTFT
figure;
plot(omega, abs(X_analytical));
