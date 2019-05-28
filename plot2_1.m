function plot2_1 (A)
    % descompun valorile singulare are matricii
        [U, S, V] = svd(A);
    % aflu dimensiunile matricii
        [m n] = size(A);
    % reprezint grafic valorile singulare (diagonala matricii S)
        plot(diag(S));
endfunction
