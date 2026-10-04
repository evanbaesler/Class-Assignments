function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    A = [1,2,3;4,5,6;-7,-8,-9];
    b = [2;4;6]; % (Copy from exercise 1)
    aug = [A b]
    B = aug;
    [rref_B, pivcols] = rref(aug);
    %{ 
    We augment A and b together, then find rref
    rref shows a row of 0 0 0 1, which is inconsistent
    %}

    % --- Part B [10 Points] --- %
    compare = rank_comp(A, aug); % (CALL rank_comp FUNCTION)
    rankA = rank(A);
    rankAb = rank(aug);
    %{ 
    Rank is equivalent to the number of pivots, since A is rank 2
    and Ab is rank 3, we see there is a mismatch, which means there is 
    inconsistency in our matrices
    %}
   
    % --- Part C [10 Points] --- %
    [m, n] = size(A); % Get the size from our input matrix
    solution_type = LS_solution(n, A, aug)
    % Takes our input matrices' column count, input matrix, and aug matrix
    % to determine consistency AND solvability, outputs it's findings
end
