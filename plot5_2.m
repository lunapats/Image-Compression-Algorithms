function plot5_2 (A, k)
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
    % aflu suma de la numitor din formula
        sum2 = sum(diag(S));
    % aflu suma de la numarator din formula si o impart la numitor
        for i = 1 : length(k)
            S1 = S(1:k(i),1:k(i));
            sum1(i) = sum(diag(S1));
        endfor
    % impart cele doua sume
        v = sum1/sum2;
    % reprezint grafic k si informatia data de primele k valori singulare
        plot(k, v);
endfunction
