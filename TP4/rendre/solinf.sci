function [x] = solinf(l,b)
    N = length(b);
    if( size(l)~= [N, N] | size(b,2) ~= 1) then
        disp("size(l)=",size(l));
        disp("size(b,2)=",size(b,2));
        disp("incorrct!");
    end
    
    x = zeros(N,1);
    x(1)= b(1)/l(1,1);
    for i = 2:1:N
        x(i) = b(i);
        for j = 1:1:i-1
            x(i) = x(i)-x(j)*l(i,j);
        end
        x(i) = x(i)/l(i,i);
    end
endfunction
