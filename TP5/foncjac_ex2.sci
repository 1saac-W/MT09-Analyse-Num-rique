function [F,J] = foncjac(x)
    F = zeros(2,1);
    x1 = x(1);
    x2 = x(2);
    F(1,1) = x1^2 + x2^2 -4;
    F(2,1) = x2 - exp(x1);
    J = zeros(2,2);
    J(1,1) = 2*x1;
    J(1,2) = 2*x2;
    J(2,1) = -exp(x1);
    J(2,2) = 1;
endfunction
