function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    Rosu = img( :, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    Verde = img( :, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    Albastru = img( :, :, 3);

    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    Rosu = proximal_resize( Rosu, p, q);
    Verde = proximal_resize( Verde, p, q);
    Albastru = proximal_resize( Albastru, p, q);
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat( 3, Rosu, Verde, Albastru);

endfunction
