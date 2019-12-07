function [x] = resolchol(A,b)
    exec './cholesky.sci';
    [C]=cholesky(A);
    exec './solinf.sci';
    y = solinf(C,b);
    exec './solsup.sci';
    x = solsup(C',y);

endfunction
