function [L,U] = LU(A)
    [n,m]= size(A);
    if(n~=m)
        disp('size[A]=',size(A));
        error('A n est pas matrice carrée');
    end
    if( abs(A(n,n))< %eps)
        error('dernière pivot nulle');
     end
    L = eye(n,n);
    U = A;

    for i = 1:n-1
        if( abs(U(i,i))< %eps)
            disp('indeix:',i);
            error('pivot nulle');
        end
        for k = i+1:n
            L(k,i) = U(k,i)/U(i,i);
            U(k,i) = 0;
            for j = i+1:n
                U(k,j) = U(k,j)-L(k,i)*U(i,j);
            end
        end 
    end
endfunction
