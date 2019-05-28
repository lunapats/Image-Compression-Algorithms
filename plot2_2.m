function plot2_2 (A, k)
    % descompun valorile singulare are matricii
        [U, S, V] = svd(A);
    % aflu dimensiunile matricii
        [m n] = size(A);
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
