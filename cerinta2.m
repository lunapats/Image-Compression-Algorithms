function cerinta2
    % transform imaginile alese in matrici de numere naturale
    A1 = double(imread('in/images/image1.gif'));
    A2 = double(imread('in/images/image2.gif'));

    % reprezentarea valorilor singulare
    subplot(2,4,1); 
    plot2_1(A1);
    subplot(2,4,5); 
    plot2_1(A2);

    % reprezentarea informatiei data de valorile singulare
    subplot(2,4,2); 
    plot2_2(A1, 2:25);
    subplot(2,4,6); 
    plot2_2(A2, 2:25);

    % reprezentarea erorri aproximarii
    subplot(2,4,3); 
    plot2_3(A1, 2:25);
    subplot(2,4,7); 
    plot2_3(A2, 2:25);

    % reprezentarea ratei de compresie a datelor
    subplot(2,4,4); 
    plot2_4(A1, 2:25);
    subplot(2,4,8); 
    plot2_4(A2, 2:25);
endfunction