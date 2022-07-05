function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    Rosu = img( :, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    Verde = img( :, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    Albastru = img( :, :, 3);

    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    Albastru = proximal_2x2( Albastru, STEP);
    Rosu = proximal_2x2( Rosu, STEP);
    Verde = proximal_2x2( Verde, STEP);
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat( 3, Rosu, Verde, Albastru);
endfunction
