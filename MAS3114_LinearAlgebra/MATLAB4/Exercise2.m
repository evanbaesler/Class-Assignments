function [name, ufid, ...
    A, x0, x1, x2, ...
    sol1, P, D, C1, sol2, ...
    x0_another, sol3, C2, sol4] = Exercise2()
    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    % --- Part A [10 Points] --- %
    A = [0.70, 0.30, 0.10; 0.10, 0.50, 0.10; 0.20, 0.20, 0.80];
    x0 = [0.70; 0.30; 0.10];

    x1 = A*x0;
    x2 = A*x1;

    % --- Part B (see SolveDiffEq.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % Method 1: Call SolveDiffEq(...)
    sol1 = SolveDiffEq(A, x0, 10000);

    % Method 2: Diagonalization (of the Transformation Matrix)
    [P, D] = eigvec(A);

    C1 = P \ x0;

    sol2 = C1(1)*(D(1,1)^10000)*P(:,1)+C1(2)*(D(2,2)^10000)*P(:,2)+C1(3)*(D(3,3)^10000)*P(:,3)

    %{ 
    Observe: (DO THEY PRODUCE THE SAME RESULT?) YES
    Conclude: In the long run we expect 36.67% to stay in cars, 18.33% in
    vans, 55% in SUVs.
    %}

    % --- Part D [10 Points] --- %
    x0_another = [0.80; 0.15; 0.05];

    % Method 1: Call SolveDiffEq(...)
    sol3 = SolveDiffEq(A, x0_another, 10000);

    % Method 2: Diagonalization (of the Transformation Matrix)
    C2 = P \ x0;

    sol4 = C2(1)*(D(1,1)^10000)*P(:,1)+C2(2)*(D(2,2)^10000)*P(:,2)+C2(3)*(D(3,3)^10000)*P(:,3)

    %{ 
    Comparison: They are both the same output vectors.
    Theorem: The markov chain steady-state theorem states that for regular
    square matrices, with all positive entries will converge to a steady
    state vector.
    Conclusion: In the long run we expect that 36.67% of people will drive
    cars, 18.33% will drive vans, and 55% will drive SUVs.
    %}
end
