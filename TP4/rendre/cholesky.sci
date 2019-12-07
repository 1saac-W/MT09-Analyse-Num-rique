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
    
    for j = 1:n
       if(j == 1)then
           c2 = A(1,1);
       else
           c2 = A(j,j) - C(j,1:j-1)* C(j,1:j-1)';
       end
       if(c2 <= 0)
            error('B(j,j)^2 n est pas positif');
        end 
       C(j,j) = sqrt(c2);
       for i = j+1:n
           if(j == 1)then
               c3 = A(i,1);
           else
               c3 = A(i,j)-C(i,1:j-1)*C(j,1:j-1)';
           end
           C(i,j) = 1/C(j,j)*c3;
        end
    end

endfunction

