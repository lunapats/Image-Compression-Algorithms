function plot5_3 (A, k)
    % aflu dimensiunile matricii
        [m n] = size(A);
    % calculez media pt fiecare vector
        u = sum(A, 2)/n;
    % actualizez vectorii care alcatuiesc
        A -= u;
    % construiesc matricea Z
        Z = A' / sqrt(n-1);
    % calculez DVS pt matricea Z
        [U, S, V] = svd(Z);
    % calculez numaratorul pentru toate valorile lui k
        for i = 1 : length(k)
            W = V(:,1:k(i));
            Y = W' * A;
            A_k = W * Y + u;
            suma(i) = sum(sum((A - A_k).^2));
        endfor
    % calculez formula pentru eroarea aproximarii
        v = suma/(m*n);
    % reprezint grafic k si eroarea aproximarii pentru matricea A
        plot(k, v);
endfunction