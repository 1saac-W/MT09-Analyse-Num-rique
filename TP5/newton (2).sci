function [x, k] = newton(foncjac, tol, N, x0)
    X = [];
    x = x0;
    for k = 1:N
        X = [X,x];
        [F,J] = foncjac(x);
        h = -J\F;
        if norm(h,2) < tol
            [F,J] = foncjac(x);
            x = X;
            return [x,k];
         else
            x = x+h;
         end
    end
    disp('newton did not converge');
endfunction
