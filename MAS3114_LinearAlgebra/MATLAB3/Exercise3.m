function [name, ufid, ...
    N1, B1, pivcols1, C1, R1, ...
    N2, B2, pivcols2, C2, R2, ...
    N3, B3, pivcols3, C3, R3, ...
    A4, N4, B4, pivcols4, C4, R4, ...
    rank_A1, rank_A2, rank_A3, rank_A4] = Exercise3(A1, A2, A3)
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    % (i) Compute a basis for the nullspace, columnspace, and rowspace of A1.
    N1 = null(A1);

    [B1, pivcols1] = rref(A1);
    C1 = A1(:, pivcols1);
    R1 = B1(1:length(pivcols1), :);

    % --- Part B [10 Points] --- %
    % (ii) Compute a basis for the nullspace, columnspace, and rowspace of A2.
    N2 = null(A2);

    [B2, pivcols2] = rref(A2);
    C2 = A2(:, pivcols2);
    R2 = B2(1:length(pivcols2), :);

    % (iii) Compute a basis for the nullspace, columnspace, and rowspace of A3.
    N3 = null(A3);

    [B3, pivcols3] = rref(A3);
    C3 = A3(:, pivcols3);
    R3 = B3(1:length(pivcols3), :);

    % (iv) Compute a basis for the nullspace, columnspace, and rowspace of A4.
    A4 = [1, -5, 2, 0, -4, 0; 0, 0, 0, 1, 4, 0; -1, 5, -2, 0, 0, -6; 2, -10, 4, -1, -10, 3];

    N4 = null(A4)

    [B4, pivcols4] = rref(A4);
    C4 = A4(:, pivcols4)
    R4 = B4(1:length(pivcols4), :);

    % (WHAT DOES THE *NULLSPACE* OF A4 LOOK LIKE GEOMETRICALLY?)
    % 
    % Rank = 3, 6 variables, a 3d (6 - 3) space in R^6 (6 columns)

    % (WHAT DOES THE *COLUMNSPACE* OF A4 LOOK LIKE GEOMETRICALLY?)
    % 
    % Rank = 3, 6 variables, a 3d space in R^4 (4 rows)

    % --- Part C [10 Points] --- %
    % Verify the Rank Theorem for A1, A2, A3, & A4.
    rank_A1 = rank(A1);
    %{ 
    Check your output results and replace ? with numbers below:  
    i) dim(Col A1) = dim(Row A1) = 4
    ii) rank(A1) + dim(Nul A1) = 4 + 0 = 4 = n
    %}

    rank_A2 = rank(A2);
    %{   
    i) dim(Col A2) = dim(Row A2) = 4
    ii) rank(A2) + dim(Nul A2) = 4 + 2 = 6 = n
    %}

    rank_A3 = rank(A3);
    %{   
    i) dim(Col A3) = dim(Row A3) = 6
    ii) rank(A3) + dim(Nul A3) = 6 + 0 = 6 = n
    %}

    rank_A4 = rank(A4);
    %{
    i) dim(Col A4) = dim(Row A4) = 3
    ii) rank(A4) + dim(Nul A4) = 3 + 3 = 6 = n
    %}

    %{ 
    
    [EC, +5 pts] (See Canvas instructions.)
    
    (a) What is dim Nul A? What about dim Col A?
    
        dim Col A = m = 25
        dim rank A + dim Nul A = 30 -> 25 + Nul A = 30
        dim Nul A = 5
    
    (b) Can you be certain that every non-homogenous system Ax = b has
        a solution? Why or why not (provide valid reasoning/proof)?
    
        Yes, since there are 25 dimensions available to us, and dim Col A =
        25, we can be certain there is a solution.
    %}
end
