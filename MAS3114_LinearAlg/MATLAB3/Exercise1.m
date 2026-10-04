function [name, ufid, ...
    A, rref_A, det_A, det_AT, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise1()
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    % (i) Some MATLAB implementation details...

    %{
    % vvvvv COMMENT OUT THIS BLOCK BEFORE SUBMITTING vvvvv
    n = randi([2500, 5000]);
    A = randi([-7,7], n, n);
    b = randi([-7,7], n, 1);
    
    tic
        A\b;
    toc;
    
    tic
        inv(A) * b;
    toc;
    % ^^^^^ COMMENT OUT THIS BLOCK BEFORE SUBMITTING ^^^^^
    %}

    %{ 
    1a. A\b is faster at 1.328162 seconds versus inv(A) at 1.520232 seconds.
    
    1b. A\b is superior to inv() in the sense that it is designed to solve
    systems of equations  rather than fully calculating an
    inverse. MATLAB goes one step further and says that it is "seldom
    necessary to form the explicit inverse of a matrix" and to use mldivide
    (\b) in the Tips of inv()
    
    1c. \b is much faster overall and more accurate as it removes
    floating-point errors by solving symbollically.

    1d. In mldivide's description it states: "If A is a rectangular m-by-n
    matrix with m ~=n, and B is a matrix with m rows, then A\B returns a
    least-squares solution to the system of equations A*x = B."
    
    %}

    % (ii) Some more practical things...
    A = [1, 2, 3; 4, 5, 6; -7, -8, -9];
    rref_A = rref(A);

    %{
    As we try to take the determinant of matrix A, we find that as we
    pursue the triangular matrix, we end up with:
    [1, 2, 3; 0, -3, -6; 0, 0, 0], because the cross-section is: 1*-3*0,
    det(A) = 0.

    Therefore, the determinant of A is 0, and A is uninvertible.
    %}

    det_A = det(A);
    % disp(det(sym(A))) % (COMMENT OUT BEFORE SUBMISSION!)

    det_AT = det(transpose(A));

    %{ 
    The determinant of the transpose leads us to also find that in the
    pursuit of the triangular matrix, we find det(transpose(A)) = (1*-3*0).
    
    When matrix A is non-invertible, the transpose of matrix A is also
    non-invertible.
    %}

    % --- Part B [10 Points] --- %
    A1 = [0, 1, 4; 1, 3, 3; 3, 7, 5];
    b1 = [-4; -2; 6];

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\(b1);
    sol_1_cramer = CramersRule3x3(A1, b1);

    %{ 
    Yes, the system is consistent as we get the same output vector.
    Solution: [19, -8, 1]
    %}

    % --- Part C [10 Points] --- %
    A2 = [0, 2, 4; 1, 3, 3; 3, 7, 5];
    b2 = [-4; -2; 6];

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\(b2);
    sol_2_cramer = CramersRule3x3(A2, b2);

    %{ 
    No, the system is NOT consistent, as our determinant is zero, and 3R2-R1
    = R3 so the rows conflict eachother. Inconsistent.
    No solutions.
    %}

    % --- Part D [10 Points] --- %
    A3 = [0, 2, 4; 1, 3, 3; 3, 7, 5];
    b3 = [-4; -2; -2];

    sol_3_partic = ParticularSolution(A3,b3)
    sol_3_matlab = A3\(b3)
    sol_3_cramer = CramersRule3x3(A3,b3)

    %{ 
    Yes, the system is consistent, as the matrix A3 is the same as A2,
    but the two duplicate rows now have the same b vector, so they are no
    longer conflicting. There are now more variables than constraints so
    there are infinitely many solutions.

    Putting the system into RREF yields
    [1, 0, -3; 0, 1, 2; 0, 0, 0] | [4; -2; 0]
    x1 = 4 + 3x_3
    x2 = -2 - 2x_3
    x3 = t

    So, x = [4; -2; 0] + [3; -2; 1] * t, t in R.
    %}
end

