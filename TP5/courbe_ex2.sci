function courbe(N)
   x1 = linspace(-3,3,N);
   t = linspace(0,2*%pi,N);
   p = 2*cos(t);
   q = 2*sin(t);
   plot(p,q,'-');
   plot(x1,exp(x1),'-');
endfunction



