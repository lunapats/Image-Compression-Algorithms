function plot5_1 (A)
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
    % reprezint grafic valorile singulare (diagonala matricii S)
        plot(diag(S));
endfunction
