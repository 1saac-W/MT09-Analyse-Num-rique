function [vp, x, kk] = puissitereeinv(A, q, x, N, tol)

    n = size(A,2);
    B= A - q*eye(n,n);
    if abs(det(B))<tol then
        vp = q;
        break;
    end
    p = find(abs(x)==norm(x,%inf),1)
    x = x/ x(p,1);
    kk =0;
    for kk = 1:N 
        u = B \ x;//disp(u);
        vp = u(p,1);
        p = find(abs(x)==norm(x,%inf),1);
        dif = norm(x- u/u(p,1), %inf);
        x = u / u(p,1);
        if dif < tol then
           // disp("sorti");
            vp = 1/vp + q;
           // disp("diff"),disp(dif);
            break;
        end
    end
endfunction
