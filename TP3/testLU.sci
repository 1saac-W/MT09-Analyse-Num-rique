exec F:\File\UTC\GI04\MT09\TP3\LU.sci;
A=[3 1 2;3 2 6; 6 1 -1];
[l u]= LU(A);
disp('L: ');disp(l);
disp('U: ');disp(u);
resultat = l*u-A;
disp('resultat: ');disp(resultat);
