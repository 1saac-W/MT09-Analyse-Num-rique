//clc;
clear;
exec 'constrpoly.sci';
exec 'mcnorm.sci';
t1 = [0,1,2]';
y1 = [1,3,7]';
[A1] = constrpoly(t1);
[x1] = mcnorm(A1,y1);
plot(t1,A1*x1,'o-b');
plot(t1,y1,'*-r');
legend("result1", "y1");

t2 = [0:0.25:2]';
y2 = [1, 1.7, 1.95, 1.8, 3., 3.6, 4.45, 5.9, 6.6]';
[A2] = constrpoly(t2);
[x2] = mcnorm(A2,y2);
f = scf()
plot(t2,A2*x2,'o-b');
plot(t2,y2,'*-r');
legend("result2", "y2");
