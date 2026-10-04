function [transform_type, name, ufid] = transformation(A)
    % Purpose: Determines whether T(x) = Ax is either onto or one-to-one.
    % Input Argument [A]: Input matrix that is read to find transform type.
    % Output Argument [transform_type]: Transformation properties of the
    %                                   input matrix

    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    
    check_onto = (rank_A == m)
    check_one_to_one = (rank_A == n);

    if check_onto && check_one_to_one
        transform_type = both;
    elseif check_onto
        transform_type = onto
    elseif check_one_to_one
        transform_type = one_to_one
    else
        transform_type = neither
    end
end
