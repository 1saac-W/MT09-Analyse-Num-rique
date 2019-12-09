function [Y] = vdp(t, x)
    Y = zeros(2,1);
    Y(1) = x(2);
    Y(2) = 0.4*(1-x(1)^2)*x(2)-x(1);
endfunction
