N1=100
N2=1000
N3 = 10000
tol = 10^-7

//ex1
A1 = [-2.5 -4.5 -1; -16 -5 -8; 11 9 5]
xa1 = [0 1 -1]'
xb1 = [1 1 1 ]'
xc1 = [1 0 -2]'
xd1 = [10^-16 1 2]'

//ex2
A2 = [1 7 4; 3 5 4; -13 -3 8]/4
xa2 = [1 2 3]'
xb2 = [1 -1 1]'

//ex3
A3 = [-1.48 1.5 -0.99; 7.98 2 3.99; -1.02 -3 -0.01]
xa3 = [1 1 1]'


function [vp,vecp, kk]= puissiter(A,x,N,tol)

// N = input("Nombre maximale d itérations ?");
p = find(abs(x)==norm(x,%inf),1)
//disp (p)
//disp(x)
x=x/x(p,1)
//disp(x)
for kk = 2:N
    y = A*x
    //disp (x)
	mu=y(p,1)
	Norm = norm(y,%inf)
	p = find(abs(y)==norm(y,%inf),1)
	if abs(mu) < tol then
		//disp ("0 est valeure propre et x "x""" est vecteur propre");
        vp = 0
        vecp = x
        break;

	else E=norm(x-(y/y(p,1)),%inf)
        x=y./y(p,1)
    end
    //disp(x);
    if E < tol then
        //disp("µ "mu" est valeur propre et x "x" est vecteur propre");
        vp = mu
        vecp = x
        break;
    end
end

//disp("L algorithme n a pas convergé.")    
//end
endfunction
[vp vecp k]= puissiter(A2,xa2,N1,tol)
