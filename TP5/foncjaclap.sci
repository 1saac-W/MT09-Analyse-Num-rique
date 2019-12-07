function [F,J] = foncjac_lap(v)
    alpha = 5;
    bet = 5;
    n = length(v)+1;
    h = 1/n;
    x = h*[1:n-1]';
    
    F = zeros(n-1,1);
    A =2*diag(ones(n-1,1))-diag(ones(n-2,1),+1)-diag(ones(n-2,1),-1);
    deff('[b]=rhs(x)','b=-x.*(x-1)');
    deff('[b]=g(x)','b=10*x./(1+x)');
    deff('[b]=gp(x)','b=(10.)./((1+x)^2)');

    F = A*v + h^2*g(v) - h^2*rhs(x);
    F(1) = F(1) - alpha;
    F(n-1) = F(n-1) - bet;
    J = A+diag(gp(v))*h^2;

endfunction

