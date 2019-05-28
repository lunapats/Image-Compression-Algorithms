function plot5_4 (A, k)
    % aflu dimensiunile matricii
        [m n] = size(A);
    % calculez rata de compresie 
        for i = 1 : length(k)
            v(i) = (2 * k(i) + 1) / m;
        endfor
    % reprezint grafic k si rata de compresie a datelor
        plot(k,v);
endfunction
