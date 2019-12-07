function [x] = solsup(u,b)
    N = length(b);
    if( size(u)~= [N, N] | size(b,2) ~= 1) then
        disp("size(u)=",size(u));
        disp("size(b,2)=",size(b,2));
        disp("incorrct!");
    end
    
    x = zeros(N,1);
    x(N)= b(N)/u(N,N);
    for i = N-1:-1:1
        x(i) = b(i);
        for j = i+1:N
            x(i) = x(i)-x(j)*u(i,j);
        end
        x(i) = x(i)/u(i,i);
    end
endfunction

