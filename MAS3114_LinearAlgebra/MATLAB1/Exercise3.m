function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A: Underdetermined Systems [10 Points] --- %
    bA = randi([-4,8],2,1); % random values from -4 to 8, 2x1
    
    A1 = randi([4,8],2,3); % random values from -4 to 8, 2x3
    Ab1 = [A1 bA]; % (CREATE THE AUGMENTED MATRIX FOR THE SYSTEM (A1)x = bA)
    [~, n] = size(A1); % (DETERMINE THE NUMBER OF COLUMNS IN A1)
    sol1 = LS_solution(n, A1, Ab1); % (CALL LS_solution FUNCTION)

    % (REPEAT)

    A2 = randi([4,8],2,3); % random values from -4 to 8, 2x3
    Ab2 = [A2 bA]; % (CREATE THE AUGMENTED MATRIX FOR THE SYSTEM (A1)x = bA)
    [~, n] = size(A1); % (DETERMINE THE NUMBER OF COLUMNS IN A1)
    sol2 = LS_solution(n, A1, Ab1); % (CALL LS_solution FUNCTION)

    A3 = randi([4,8],2,3); % random values from -4 to 8, 2x3
    Ab3 = [A3 bA]; % (CREATE THE AUGMENTED MATRIX FOR THE SYSTEM (A1)x = bA)
    [~, n] = size(A1); % (DETERMINE THE NUMBER OF COLUMNS IN A1)
    sol3 = LS_solution(n, A1, Ab1); % (CALL LS_solution FUNCTION)
    
    % --- Part B: Explanation of Part A [10 Points] --- %

    %{ 
    Since there is more columns than rows, we have more variables than
    equations. This means that we have free variables, which means
    infinite solutions. But, if we have a pivot in our right-most column
    the solution is NOT consistent as we have 0 = b which is false.
    %}

    % (LEAVE THE FOLLOWING AS NaN OR PROVIDE AN EXAMPLE IF POSSIBLE)
    % (WHEN PROVIDING AN EXAMPLE, IT MUST BE A NON-TRIVIAL EXAMPLE.)
    % (i.e., A MATRIX DOES NOT CONTAIN A ZERO ROW AND DOES NOT HAVE TWO OR MORE IDENTICAL ROWS.)
    example_A1 = [1, 2, 3; 4, 5, 6];
    example_b1 = [7; 8];
    example_aug = [example_A1 example_b1]

    [~, n] = size(example_A1)
    example_type1 = LS_solution(n, example_A1, [example_A1, example_b1])
   
    %{
    It is not possible for an underd+-etermined system to have a unique sol.
    due to free variables being prevalent in the system.
    %}

    % --- Part C: Overdetermined Systems [10 Points] --- 
    
    bC = randi([-4,8],3,1);

    A4 = randi([-4,8],3,2);
    Ab4 = [A4 bC];
    [~, n] = size(A4);
    sol4 = LS_solution(n, A4, Ab4)

    A5 = randi([-4,8],3,2);
    Ab5 = [A5 bC];
    [~, n] = size(A5);
    sol5 = LS_solution(n, A5, Ab5)

    A6 = randi([-4,8],3,2);
    Ab6 = [A6 bC];
    [~, n] = size(A6);
    sol6 = LS_solution(n, A6, Ab6)
    
    % --- Part D: Explanation of Part C [10 Points] --- %
    
    %{ 
    Because we have more rows than variables now, the results are inc.
    this is because the rows act as constraints, and with overdefinition
    we find ourselves with conflicting constraints, 
    %}

    % (PROVIDE AN EXAMPLE WITH ONE SOLUTION BELOW WITH A NONTRIVIAL MATRIX)
    example_A2 = [1, 2; 3, 1; 4, 3]; % not multiples of first row
    example_b2 = [5; 5; 10]; % independent outputs
    [~, n] = size(example_A2);
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]);

    % (PROVIDE AN EXAMPLE WITH INFINITELY MANY SOLUTIONS BELOW WITH A NONTRIVIAL MATRIX)
    example_A3 = [1, 2; 2, 4; 3, 6]; % multiples of the first row, rows scale with outputs
    example_b3 = [3; 6; 9];
    [~, n] = size(example_A3);
    example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]);
end
