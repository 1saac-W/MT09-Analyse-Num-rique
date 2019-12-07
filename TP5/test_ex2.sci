exec './newton.sci';

exec './foncjac_ex2.sci'
tol = 1e-6;
N = 1000;
x0 = [1, 1]';
[X0, k0] = newton(foncjac, tol, N, x0);
x1 = [-1, 0]';
[X1, k1] = newton(foncjac, tol, N, x1);
x2 = [30, 30]';
[X2, k2] = newton(foncjac, tol, N, x2);

plot(X1(1,:),X1(2,:),'r*');
