function [A] = constrpoly(t)
    [m] = size(t,1);
    A = zeros(m,3);
    A(:,1) = ones(m,1);
    A(:,2) = t;
    A(:,3) = t.*t;
endfunction
