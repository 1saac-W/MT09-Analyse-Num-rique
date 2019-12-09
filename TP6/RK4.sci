function [z] = RK4(a, t0, T, N, f)
    h = T/N;
    t = t0 + h*[0:N-1]';
    zn = a;
    z = [zn];
    for i = 0:N-1
       K0 = f(t(i+1),zn);
       K1 = f(t(i+1)+h/2,zn+h/2*K0);
       K2 = f(t(i+1)+h/2,zn+h/2*K1);
       K3 = f(t(i+1)+h,zn+h*K2);
       zn = zn + h/6*(K0+2*K1+2*K2+K3); 
       z = [z,zn];
    end
    
endfunction
