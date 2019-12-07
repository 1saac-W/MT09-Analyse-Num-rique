function courbe(t0,T,N,z)
   x1 = linspace(t0,t0+T,N+1);
   plot(x1,2*%eps^x1-x1^2-2*x1-2,'b');
   plot(x1,z,'r');
endfunction
