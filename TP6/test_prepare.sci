exec('./pointmilieu.sci');
exec('./foncf.sci');

a = 0;
t0 = 0;
T = 5;
N = 50;
z = pointmilieu(a, t0, T, N, f);
disp(z);
x1 = linspace(t0,t0+T,N+1);
plot(x1,2*%e^x1-x1^2-2*x1-2,'b');
plot(x1,z,'r');
