function [vp,vecp, kk]= puissiterSDP(A,x,N,tol)
N=30
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
