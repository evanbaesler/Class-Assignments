function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    A = [1,2,3;4,5,6;-7,-8,-9];
    b = [2;4;6];
    c = [2,-2,2];
    D = [1,2,3,4,5;-5,-4,-3,-2,-1;4,3,2,1,0];
    x1 = A(3,:); % (Prints all of matrix A's row 3)
    x2 = D(:,5); % (Prints all of matrix D's column 5)
    x3 = [A b]; % (Prints A augmented with b)
    aug = [A; c]; % (Augments A with ROW c, effectively appending it)
                 % (Normally this appends columns not rows, so we add ;)

    % --- Part B [10 Points] --- %
    x4 = eye(7); % (Creates pivots in each row, 7x7)
    x5 = zeros(6,4); % (Creates a 6x4 zero matrix)
    x6 = zeros(6); % (Creates a 6x6 zero matrix)
    x7 = ones(5,3); % (Creates a 5x3 of ones)
    x8 = diag(c); % (Creates a diagonal of c with zeros)
                 % (Elsewhere in a 3x3)

    % --- Part C [10 Points] --- %
    F1 = randi ([-4,8], 3, 5); % (3x5 matrix, values [-4,8])

    F2 = F1;    % (DO NOT REMOVE) Copy array
    F2(:, [2 5]) = F1(:, [5 2]); % (Inverts columns 2-5)

    E = [A F2]; % (Augments A with F2)
    
    [m, n] = size(E) % (m = rows, n = columns in E)
    
    E1 = E(:, [3 8]) % (Copies columns 3 and 8)
    E2 = E(:, 3:8) % (Copies columns 3-8)
end
