function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaz? coeficien?ii de Interpolare Bicubic? pentru 4 puncte al?turate
    % =========================================================================

    % TODO: Calculeaz? matricile intermediare.
    Init = [1,0,0,0; 0,0,1,0; -3,3,-2,-1; 2,-2, 1,1];
    TInit = [1,0,-3,2; 0,0,3,-2; 0,1,-2,1; 0,0,-1,1];
    indici=[y1,x1,y2,x2];
    Af = [f(y1,x1), f(y1,x2), Ix(y1,x1), Ix(y1,x2); f(y2,x1), f(y2,x2), Ix(y2,x1), Ix(y2,x2); Iy(y1,x1), Iy(y1,x2), Ixy(y1,x1), Ixy(y1,x2); Iy(y2,x1), Iy(y2,x2), Ixy(y2,x1), Ixy(y2,x2)];
    
    % TODO: Converte?te matricile intermediare la double.
    Init = double(Init);
    TInit = double(TInit);
    Af = transpose(Af);
    Af = double(Af);
    
    % TODO: Calculeaz? matricea final?.
    A = Init * Af * TInit;
    
endfunction