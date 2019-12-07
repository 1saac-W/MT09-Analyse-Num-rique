function [C] = cholesky(A)
    [n,m] = size(A);
     if(n~=m)
        disp('size[A]=',size(A));
        error('A n est pas matrice carrée');
    end
    if(A(1,1)<0)
        disp('A(1,1)=',A(1,1));
        error('A(1,1) n est pas positif');
    end
    C = zeros(n,m);
    
    for j = 1:n-1
        c = A(j,j);

        for k = 1:j-1
            c = c - C(j,k) * C(j,k);
        end
        if(c <= 0)
            error('B(j,j)^2 n est pas positif');
        else
            C(j,j) = sqrt(c);
        end
        for i = j+1:n
            d = A(i,j);

            for k = 1:j-1
                d = d - C(i,k)*C(j,k);
            end
            C(i,j) = 1/C(j,j)*d;
        end
    end
    e = A(n,n);
    for k = 1:n-1
        e = e - C(n,k)*C(n,k);
    end
    if(e < 0 )then
        error('B(n,n)^2 n est pas positif');
    else
        C(n,n) = sqrt(e);
    end
endfunction
