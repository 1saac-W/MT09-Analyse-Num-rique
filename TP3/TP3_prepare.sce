B = [2 7 -9]'
U = [1 2 -1; 0 1 5; 0 0 -9]

function [x] = solsup(u,b)
    N = length(b);
    x = zeros(N);
    for i = N:-1:1
        s = b(i);
        for j = i+1:N
            s = s-x(j)*u(i,j);
        end
        
        if (u(i,i) ~=0 ) then
            x(i) = s/u(i,i);
        else
            disp("uii = 0");
            break;
        end
    end
endfunction
X = solsup(U,B)
disp(X);
