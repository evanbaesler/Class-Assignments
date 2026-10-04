function [name, ufid, u, v, w, x, A, A_11, A_23, A2, A3, B, B2, B3, ...
          b, aug, rref_Ab1, rref_Ab2, pivcols, compare] = Exercise()
    % added to clear command window to make debugging easier
    clear all; close all; clc;

    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Extra Credit [6 Points] --- %
    % * Vectors *
    u = [1 3 5 7]; % (u is the row vector with entries 1, 3, 5, 7) 
    v = [1; 3; 5; 7]; % (v is the column vector with entries 1, 3, 5, 7)
    w = 1:7; % (w steps from 1 through 7 by 1)
    x = 1:2:7; % (x steps from 1 through 7 by 2)
    
    % * Matrices *
    % Enter entries manually
    A = [1 2 3; 4 5 6]; % creates [1 2 3]
                        %         [4 5 6]
    A_11 = A(1,1); % (takes the top left box of A (1,1), or 1)
    A_23 = A(2,3) % (takes the bottom right box of A (2,3), or 6)
    A2 = A(2,:); % (takes the second row)
    A3 = A(:,3); % (takes the third column)
    
    % Randomly generated matrices
    B = randi([-10,10],6,4); % (creates a random 6x4 matrix with values
                             % between [-10,10])
    B2 = B(2:5,2:4); % (makes a matrix of rows 2-5, and columns 2-4)
    B3 = B([2 5], 2:4); % (makes a matrix of rows 2 and 5, and columns 2-4)
    
    % * Solving Systems *
    % Solve Ax=b using RREF
    b = [1; 2];
    aug = [A b]; % (effectively appends a column to the rightmost of our matrix)
    rref_Ab1 = rref(aug); % (creates rref of our augment, used aug for A b)

    [rref_Ab2, pivcols] = rref(aug); % (finds pivot columns of our rref) 
    %{
    we basically want to see if there is a pivot column in our last column
    if there is a pivot column in column 3, that means we have 0 0 1
    which by definition is inconsistent, conversely if there is no pivot
    in column 3, we are consistent!
    %}
    
    % Solve Ax=b by comparing the ranks
    compare = rank_comp(A, aug); 
    % output of compare is a variable string, so we print!
end
