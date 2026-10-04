function [name, ufid, ...
    transform_A1, transform_A2, transform_A3, ...
    transform_B1, transform_B2, transform_B3, ...
    C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
    example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A (see transformation.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    transform_A1 = transformation(A1)
    transform_A2 = transformation(A2)
    transform_A3 = transformation(A3)
    
    transform_B1 = transformation(B1)
    transform_B2 = transformation(B2)
    transform_B3 = transformation(B3)

    C1 = randi([-4, 8], 3, 3);
    C2 = randi([-4, 8], 3, 3);
    C3 = randi([-4, 8], 3, 3);

    transform_C1 = transformation(C1)
    transform_C2 = transformation(C2)
    transform_C3 = transformation(C3)

    % --- Part C [10 Points] --- %

    %{ 
    (1) When m < n, a transformation T(x) = Ax cannot be one-to-one because
        For one-to-one, we need linearly independent columns, but they are
        forced to be linearly dependent as explained in exercise 1 (more
        vectors than constraints).
     
    (2) When m > n, a transformation T(x) = Ax cannot be onto because
        For onto, we need linearly independent rows, which requires m <= n,
        since we have more rows than columns, they cannot be independent
        causing the transformation to not be onto.
     
    (3) When m = n, a transformation T(x) = Ax 
        We can force the m = n matrix to not be one-to-one by making the
        columns linearly dependent, which causes it to lose its
        invertability, which makes it fail onto aswell.
    %}

    example_neither = [1, 1, 2; 2, 3, 5; 4, 8, 12];
    transform_neither = transformation(example_neither);

    %{ 
    (4) When m = n, a transformation T(x) = Ax can NOT be just one-to-one
    or onto, this is because if the matrix fails one it automatically fails
    the other as losing a dimension or failing to cover the entirety of the
    space. Failing one check causes you to fail the other in this case.
    %}
end

