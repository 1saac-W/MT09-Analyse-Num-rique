exec './newton.sci';
exec './foncjaclap.sci'
tol = 1e-6;
N = 1000;

//on prend v initial (vi10 et vi20) avec tout les composants nulls 
vi10 = zeros(9,1);
[v10, k10] = newton(foncjac_lap, tol, N, vi10);

vi20 = zeros(19,1);
[v20, k20] = newton(foncjac_lap, tol, N, vi20);
//v10 et v20 contient les resultat de chaque iteration
//v10(:,k10) et v20(:,k20) sont la resultat final

V10 = [5,(v10(:,k10))',5];
X10 = 1/10*[1:11]';
V20 = [5,(v20(:,k20))',5];
X20 = 1/20*[1:21]';
//V10 et V20 sont des vecteurs de v0 a vn 
//(ici on ajouter v0 et vn dans le verteur)
//et X10 et X20 sont des vecteurs de x0 a xn

plot(X10,V10,'r'); //pour affichier la ligne
plot(X10,V10,'cx');//pour affichier les points
plot(X20,V20,'b');
plot(X20,V20,'mx');
