function [y_hat, z, name, ufid] = proj(y, u)
    % Purpose: (COMMENT)
    % Input Argument [y]: (COMMENT)
    % Input Argument [u]: (COMMENT)
    % Output Argument [y_hat]: (COMMENT)
    % Output Argument [z]: (COMMENT)

    % --- Name & UFID --- %
    name = "Evan Baesler";
    ufid = 31151619;

    y_hat = (dot(y, u) / dot(u, u)) * u;
    z = y - y_hat;
end
