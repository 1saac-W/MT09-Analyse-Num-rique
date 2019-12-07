function [vp,vecp] = puisiter(A,x,N,tol)
xp = max(abs(x));
p = find(abs(x)==xp);
x = x./xp;
for k=2:N
    y = A*x;
    u = y(p);
    yp = max(abs(y));
    p = find(abs(y)==yp);
    if yp < tol
        vp = 0;
        vecp = x;
        break;
    else
        e = max(abs(x-(y./yp)));
        x = y./yp;
    end
    if e < tol
        vp = u;
        vecp = x;
        break;
    end
end
endfunction
