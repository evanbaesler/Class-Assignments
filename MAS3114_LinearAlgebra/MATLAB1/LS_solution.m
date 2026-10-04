function [system_type, name, ufid] = LS_solution(n, A, Ab)
    % (PURPOSE OF FUNCTION)
    % n = Number of columns in A
    % A = Input Matrix
    % Ab = Augmented Matrix

    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;    

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    same = "rank([A]) equals to rank([A b])";
    diff = "rank([A]) does not equal to rank([A b])";

    if rank(A) == rank(Ab) % function in rank_comp.m
        compare = same;
    else
        compare = diff;
    end

    if rank(A) == rank(Ab) && rank(A) == n    % per rouche-capelli 
        system_type = con_with_one_sol;       % if rank A = rank Ab = n col
    elseif rank(A) == rank(Ab) && rank(A) < n % con w/ 1 sol, rank A = rank Ab
        system_type = con_with_inf_sols;      % gives con w/ inf sol, else
    elseif rank(A) ~= rank(Ab)                % inconsistent
        system_type = inc;
    end
end
