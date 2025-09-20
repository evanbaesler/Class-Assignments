function r = myroots(n, a)
% myroots: Find all the nth roots of the complex number a
%
% Input Args:
% n: a positive integer specifying the nth roots
% a: a complex number whose nth roots are to be returned
%
% Output:
% r: 1xn vector containing all the nth roots of a

A = abs(a); % Find the magnitude of the complex number
phi = angle(a); % Find the phase (phi) of the complex number
k = [0:1:n-1]; % Setting k to given value
r = A^(1/n)*exp(j*(phi + 2*pi*k)/n) % Using root solve formula

end