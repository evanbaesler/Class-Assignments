function [name, ufid, ...
    n1, B1, A1, ...
    P1, D1, PDP1, ...
    P1_again, D1_again, PDP_again, ...
    P2, D2, PDP2, P3, D3, PDP3, ...
    A2, P4, D4, verify1_LHS, verify1_RHS, verify2, basis_eigenspace, ...
    A3, P5, D5, dot_A3, ...
    A4, P6, D6, x, C] = Exercise1()
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    rng(ufid, 'twister') % (DO NOT REMOVE)

    % --- Part A [10 Points] --- %
    % vvv GENERATES RANDI MATRIX WITH DISTINCT EIGENVALUES vvv %
    n1 = 4;
    A1 = [];
    B1 = [];
    while length(unique(diag(A1))) ~= n1
        B1 = randiFullRank([-7, 7], n1);
        A1 = triu(B1); % Returns the upper-triangular part of A1
    end
    % ^^^ DO NOT MODIFY! ^^^ %

    %{ 
    The eigenvalues of A1 are 3, 1, -1, 7 (list the value of each eigenvalue)
    because they are along the diagonal edge of the matrix.
    %}


    [P1, D1] = eig(A1);

    %{ 
    P1 is a matrix where our columns are eigenvectors, which when 
    multiplied by A1 results in a scalar multiple of the original eigenvector.
    D1 is a matrix of our eigenvalues along the diagonal, which are 
    effectively the scalar multiple applied to eigenvectors when multiplied 
    by our A1 matrix.
    %}

    PDP1 = P1*D1*inv(P1);

    [P1_again, D1_again] = eigvec(A1)
    PDP_again = P1_again*D1_again*inv(P1_again)

    %{ 
    We can conclude that A1 is diagonalizable
    since we have 4 distinct eigenvalues (7,3,1,-1). Since there is a
    matrix of n x n with n eigenvalues, it is diagonalizable.
    %}

    % (i) First distinct diagonalization: re-order eigenvalues on the diagonal of D
    P2 = P1; % (DO NOT REMOVE)
    D2 = D1; % (DO NOT REMOVE)

    % MODIFY P2 & D2 HERE

    P2 = P2(:, [2, 1, 4, 3]);
    D2 = D2([2, 1, 4, 3], [2, 1, 4, 3]);

    PDP2 = P2*D2*inv(P2);

    % (ii) Second distinct diagonalization: scale one of the eigenvectors in P
    P3 = P1 % (DO NOT REMOVE)
    D3 = D1; % (DO NOT REMOVE)

    % MODIFY P3 HERE

    P3(:, 2) = P3(:, 2)*2;
    
    PDP3 = P3*D3*inv(P3);

    % --- Part B [10 Points] --- %
    A2 = [-3, 1, 0, 0; 0, -3, 1, 0; 0, 0, -3, 1; 0, 0, 0, -3];

    [P4, D4] = eig(A2);

    verify1_LHS = A2*P4;
    verify1_RHS = P4*D4;
    verify2 = P4*D4*inv(P4)

    %{ 
    Observe: Verify1_LHS and RHS are both equivalent, but verify2 gave us
    an error due to the matrix P4 being singular. This means it has a
    determinant of 0, and is not invertible.
    %}

    basis_eigenspace = NulBasis(A2 - (-3)*eye(4));

    %{ 
    A2 is not diagonalizable because...
    (i)  We do not have n eigenvalues for an n x n matrix, (1 of 4).
    (ii) -3 shows up 4 times, so its geometric value is less than its
         algebraic value.
    %}

    % --- Part C [10 Points] --- %
    A3 = [6, -1; -1, 6];

    [P5, D5] = eigvec(A3)

    dot_A3 = dot(P5(:, 1), P5(:,2))

    % The eigenvectors of A3 are ORTHOGONAL.

    %{ 
    Solution: x(t) = c1 * exp(7t) * [-1; 1] + c2 * exp(5t) * [1; 1]
    %}

    % --- Part D [10 Points] --- %
    A4 = [3, -1, -1; -1, 3, -1; -1, -1, 3];

    [P6, D6] = eigvec(A4)

    % A4 is diagonalizable because it is a symmetric matrix.

    x = [6; 2; 1];
    C = P6 \ x;
    %{ 
    Solution: x(t) = -1 * exp(4t) * [-1; 1; 0] -2 * exp(4t) * [-1; 0; 1] +
                      3 * exp(t) * [1; 1; 1]
    %}
end
