//4.2 (a) 
exec './hilbert.sci';

//4.2 (b) 
//création de './puissiterSDP.sci' et './puissitereeinvSDP.sci', 
// en remplaçant la ligne u = B \ x par méthode de Cholesky
exec './puissiterSDP.sci';
exec './puissitereeinvSDP.sci';

//4.2 (c)
H4 = hilbertmat(4);
H10 = hilbertmat(10);
disp('H4 :');
disp(H4);
disp('H10 :');
disp(H10);

tol = 1e-12;
N = 200;
x_4 = ones(4,1);
x_10 = ones(10,1);
q = 0;
[vp,vecp, kk]= puissiterSDP(H4,x_4,N,tol)
[vp1, vecp1, k1] = puissitereeinvSDP(H4, q, x_4, N, tol);
[vp2,vecp, kk]= puissiterSDP(H10,x_10,N,tol)
[vp3, vecp1, k1] = puissitereeinvSDP(H10, q, x_10, N, tol);
cond4 = vp/vp1;
cond10 = vp2/vp3;
disp("Le conditionnement de H4 est de Lambda max / Lambda min :");
//disp(vp, '/', vp1, '=', cond4);
disp(cond4, '=', vp1, '/', vp)
disp("Le conditionnement de H10 est de Lambda max / Lambda min ");
//disp(vp2, '/', vp3, '=', cond10);
disp(cond10, '=', vp3, '/', vp2);

//4.2 (d)
cond4_2 = cond(H4);
cond10_2 = cond(H10);
disp("Le conditionnement de H4 selon la fonction cond de scilab est de");disp(cond4);
disp("Le conditionnement de H10 selon la fonction cond de scilab est de");disp(cond10);

//4.2 (e)
exec './resolchol.sci';
b1 = [1 1 1 1]';
x1 = resolchol(H4,b1);
disp("x1 = ");disp(x1);

bpert = [0.999 1.004 0.995 1.005]';
xpert = resolchol(H4,bpert);
disp("xpert =");disp(xpert);

deltb = b1-bpert;
deltx = x1-xpert;
ecart_b = norm(deltb)/norm(b1);
ecart_x = norm(deltx)/norm(x1);
disp("L ecart relatif de b est de");disp(ecart_b);
disp("L ecart relatif de x est de");disp(ecart_x);

//4.2 (f)
b2 = ones(10,1);
x2 = resolchol(H10,b2);
disp("x2 = ");disp(x2);

b2pert = b2-1e-3*rand(1,10,"unifoem")';
x2pert = resolchol(H10,b2pert);
disp("x2pert =");disp(x2pert);

deltb2 = b2-b2pert;
deltx2 = x2-x2pert;
ecart_b2 = norm(deltb2)/norm(b2);
ecart_x2 = norm(deltx2)/norm(x2);
disp("L ecart relatif de b2 est de");disp(ecart_b2);
disp("L ecart relatif de x2 est de");disp(ecart_x2);

x2_2 = H10\b2;
x2pert_2 = H10\b2pert;
disp("x2_2 =");disp(x2_2);

disp("x2pert_2 = ");disp(x2pert_2);


deltx3 = x2_2-x2pert_2;
ecart_x3 = norm(deltx2)/norm(x2_2);
//disp("L ecart relatif de b2 est de");disp(ecart_b2);
disp("L ecart relatif de x2 en utisant la fonction \ de scilab est de");disp(ecart_x3);

//L'écart relatif de X est tuojours plus important lorsque l'équation
//est résolue via la résolution du système linéaire x = H\ b
//que lorsqu'elle est résolue via la méthode de Cholesky.
//Cependant, la matrice de Hilbert étant mal conditionnée, cet
//écart reste conséquent.



