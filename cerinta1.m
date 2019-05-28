function A_k = cerinta1 (image, k)
    % transform imaginea intr-o matrice de numere naturale
        A = double(imread(image));
    % descompun valorile singulare are matricii
        [U, S, V] = svd(A); 
    % obtin compresia matricilor rezultate prin descompunerea matricii A
        U_k = U(:,1:k);
        S_k = S(1:k,1:k);
        V_k = V(:,1:k);
    % generez matricea aproximativa A_k
        A_k = U_k * S_k * V_k';
endfunction