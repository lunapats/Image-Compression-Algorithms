function plot2_4 (A, k)
    % aflu dimensiunile matricii
        [m n] = size(A);
    % calculez rata de compresie 
        for i = 1 : length(k)
            v(i) = (m*k(i) + n*k(i) + k(i))/(m*n);
        endfor
    % reprezint grafic k si rata de compresie a datelor
        plot(k, v);
endfunction
