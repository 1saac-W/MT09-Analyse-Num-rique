function [TV] = compar(a, t0, T)
    N = [10, 100, 1000, 10000];
    TV = zeros(8,3);
    exec('./pointmilieu.sci');
    exec('./eulerexpl.sci')    
    exec('./RK4.sci');
    exec('./f.sci');
    for i = 1:4
        z1 = pointmilieu(a, t0, T, Nptmil, f);

        TV(2*i-1,1) = z1(1,N(i)+1);
        TV(2*i,1) = z1(2,N(i)+1);
        z2 = eulerexpl(a, t0, T, Neul, f);
        TV(2*i-1,2) = z2(1,N(i)+1);
        TV(2*i,2) = z2(2,N(i)+1);
        z3 = RK4(a, t0, T, Nrk4, f);
        TV(2*i-1,3) = z3(1,N(i)+1);
        TV(2*i,3) = z3(2,N(i)+1);
    end
endfunction
