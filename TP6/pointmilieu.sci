function [z] = pointmilieu(a, t0, T, N, f)
    h = T/N;
    t = t0 + h*[0:N-1]';
    zn = a;
    z = [zn];
    for i = 0:N-1
       K0 = f(t(i+1),zn);
       K1 = f(t(i+1)+h/2,zn+h/2*K0);
       zn = zn + h*K1; 
       z = [z,zn];
    end
    
endfunction
