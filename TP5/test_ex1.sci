exec './Newton.sci';
function [F, J] = mafoncjacf1(x)
    F = x - cos(x);
    J = 1 + sin(x);
endfunction
tol = 1e-6;
N = 1000;
x0 = 0;
[x, k] = newton(mafoncjacf1, tol, N, x0);

