function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n % Starts from i, so 1:n, 2:n, 3:n, etc.
            A2(i,j) = i + j; % Does 1 FLOP
            A2(j,i) = A2(i,j); % Does NOT do a FLOP (copies memory over)
        end
    end

    %{ 
    Yes, the outputs have the same output.

    For-Loop (i) = n^2 FLOPs
    
    For-Loop (ii) = (n(n+1))/2 FLOPs

    WORK: We will have n loops of n - i + 1, which would be at most
          n * (n - 1 + 1) = n^2 for i = 1, as i -> infinity, the FLOPs
          decrease.

          n = 1: 1(1) = 1
          n = 2: (2 + 1) = 3
          n = 3: (3 + 2 + 1) = 6
          n = 4: (4 + 3 + 2 + 1) = 10
          n = 5: (5 + 4 + 3 + 2 + 1) = 15
          
          This becomes a sum of n, or (n(n+1))/2

    For-loop ii uses less FLOPs, as seen for n = 5, i = 25 FLOPs, ii = 15
    FLOPs.
    %}

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)

    i = 1;
    while i <= n
        j = 1;
        while j <= n
            A3(i, j) = i + j;
            j = j + 1;
        end
        i = i + 1;
    end
    
    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)

    i = 1;
    while i <= n
        j = i;
        while j <= n
            A4(i, j) = i + j;
            A4(j, i) = A4(i, j);
            j = j + 1;
        end
        i = i + 1;
    end

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = randi([-4, 8], n, (n-2));

    ABBA = A*B;
    % ABBA = B*A, does not work
    %{ 
    % Columns of first matrix (n) do not match rows of second (n-2)
    %}

    C = randi([-4, 8], n, n);

    AC = A*C;
    CA = C*A;
    %{ 
    They do NOT equal eachother, as for AC, the dot product would look like
    the first row of A and first column of C in the top left; for CA it is
    the first row of C and the first column of A, giving us differing
    answers.
    
    Aside: Matrix multiplication is function composition.
    %}

    AI = A*eye(n);
    IA = eye(n)*A;
    %{ 
    The identity matrix is a special case where no matter the order the
    output will be the same when multiplied by some other matrix; this is
    because it effectively acts as a multiplication, and AI = IA = A.
    
    Hint: I_n, the identity matrix, has some special properties.
    %}

    % --- Part D [10 Points] --- %
    inverse_A = inv(A);
    %{ 
    No, it is not invertible because the columns are not linearly
    independent and MATLAB tells us we will have an approximation.
    %}

    D = [1, -1, 2; 0, 0, 1; 1, 3, -2];
    inverse_D = inv(D);

    % Complete using *only* two lines and using the rref function 
    % (cannot use inv function)!
    rref_something = rref([D, eye(3)]);
    rref_inverse_D = rref_something(:, 4:6);

    inv_inv_D = inv(inv(D));
    %{ 
    Yes, the inverse of an inverse is the normal matrix D, the inverse of
    an invertible matrix is the standard input matrix.
    %}

    E = [1, 0, 2; 2, -1, 5; -1, 1, -1];

    inverse_DE = inv(D*E);
    inv_D_inv_E = inv(D)*inv(E);
    inv_E_inv_D = inv(E)*inv(D);
    %{ 
    The inverse of the product of two invertible matrices D and E is
    equal to the inverse of E times the inverse of D.
    %}

    inv_DT = inv(D');
    inv_D_T = (inv(D))';
    %{ 
    The inverse of the transpose of an invertible matrix D is equal to
    the transpose of an inversion of an invertible matrix D.
    %}
end
