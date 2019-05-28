function plot2_3 (A, k) 
    % descompun valorile singulare are matricii
        [U, S, V] = svd(A);
    % aflu dimensiunile matricii
        [m n] = size(A);
    % calculez numaratorul pentru toate valorile lui k
    for i = 1 : length(k)
        U_k = U(:,1:k(i));
        S_k = S(1:k(i),1:k(i));
        V_k = V(:,1:k(i));
        A_k = U_k * S_k * V_k';
        suma(i) = sum(sum((A - A_k).^2));
    endfor
    % calculez formula pentru eroarea aproximarii
        v = suma/(m*n);
    % reprezint grafic k si eroarea aproximarii pentru matricea A
        plot(k, v);
endfunction
