function [name, ufid, ...
    A1, A2, A3, dep_A1, dep_A2, dep_A3, ...
    B1, B2, B3, dep_B1, dep_B2, dep_B3, ...
    example_B, dep_B, example_C, dep_C] = Exercise1()
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    % (1) m < n
    A1 = randi([-4,8], 3, 5)
    A2 = randi([-4,8], 3, 5)
    A3 = randi([-4,8], 3, 5)

    dep_A1 = dependence(A1)
    dep_A2 = dependence(A2)
    dep_A3 = dependence(A3)

    % (2) m > n
    B1 = randi([-4, 8], 5, 3);
    B2 = randi([-4, 8], 5, 3);
    B3 = randi([-4, 8], 5, 3);

    dep_B1 = dependence(B1)
    dep_B2 = dependence(B2)
    dep_B3 = dependence(B3)

    % --- Part B [10 Points] --- %
    %{ 
    We know that a matrix of m < n will always be a dependent set as there
    are more vectors than rows, or more vectors than the dimensions of the
    span.

    So yes, they are ALWAYS linearly dependent.
    %}
     
    example_B = NaN;
    dep_B = NaN;

    % --- Part C [10 Points] --- %
    %{ 
    Conversely, in a matrix of m > n, we know there are more rows than
    columns, which means that there are more dimensions in our span than
    vectors. This means the matrix USUALLY are independent, but it is still
    possible for the columns to all be multiples of one another from sheer
    chance.

    So no, they are NOT ALWAYS linearly independent
    %}

    example_C = [15, 12, 9, 6, 3; 10, 8, 6, 4, 2; 5, 4, 3, 2, 1]
    dep_C = dependence(example_C)
end
