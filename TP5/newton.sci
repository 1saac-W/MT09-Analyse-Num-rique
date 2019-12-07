function [x, k] = newton(foncjac, tol, N, x0)
    X = [];
    x = x0;
    for k = 1:N
        X = [X,x];
        [F,J] = foncjac(x);

        h = -J\F;

        if norm(h,2) > tol
            x = x+h;
        else
            [F,J] = foncjac(x);
            x = X;
            //[x,k] = return (x,k);
            //return (x,k)
            return;
        end
    end
    disp('newton did not converge');
endfunction
