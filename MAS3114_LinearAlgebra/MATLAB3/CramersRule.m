function [x, name, ufid]  = CramersRule(A, b)
    % Purpose: To perform Cramers Rule to find the solution to a system of
    %          equations within matrices for any size square matrix.

    % Input Argument [A]: The Input matrix where Ax = b
    % Input Argument [b]: The constant matrix where Ax = b
    % Output Argument [x]: The x vector, which is comprised of x_1 to x_n,
    %                      where x solves all equations simultaneously.

    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    [m, n] = size(A); % # of rows and columns of A, respectively

    if m ~= n % Can't apply Cramer's rule if rows do not equal columns
        x = NaN;
    elseif abs(det(A)) <= 10^(-8) % Close to singular (so we can't apply Cramer's rule)
        x = NaN;
    else % Apply Cramer's Rule
        x = zeros(1, n); % Allocate the (row) vector in advance
        detA = det(A); % Calculate the determinant once to use in loop

        for i = 1:n % Loop through rows
            B = A;
            B(:, i) = b; % A_i(b)
            x(i) = det(B) / detA;

        end

        x = x'; % Transpose to express the solution as a column vector
    end

    % Use CramersRule3x3.m as a guide to write this new function.
    % Hint: Use a for-loop.

    
end
