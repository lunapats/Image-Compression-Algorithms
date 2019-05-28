function [A_k S] = cerinta4 (image, k)
    % transform imaginea intr-o matrice de numere naturale
        A = double(imread(image));
    % aflu dimensiunile matricii
        [m n] = size(A);
    % Pasul 1: calculez media pt fiecare vector
        u = sum(A, 2)/n;
    % Pasul 2: actualizez vectorii care alcatuiesc
        A -= u;
    % Pasul 3: construiesc matricea Z    
        Z = A*(A'/(m-1));
    % Pasul 4: calculez DVS pt matricea Z
        [U, S, V] = svd(Z);
    % Pasul 5: generez spatiul componentelor principale
        W = V(:,1:k);
    % Pasul 6: calculez proiectia lui A
        Y = W' * A;
    % Pasul 7: aproximez matricea initiala
        A_k = W * Y + u;
endfunction