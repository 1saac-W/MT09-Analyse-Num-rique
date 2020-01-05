function [z] = eulerexpl(a, t0, T, N, f)
    h = T/N;
    t = t0 + h*[0:N-1]';
    zn = a;
    z = [zn];
    for i = 0:N-1
       zn = zn + h*f(t(i+1),zn);
       z = [z,zn];
    end
    
endfunction
