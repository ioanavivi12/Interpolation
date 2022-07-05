function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii
    Rosu = img(:, :, 1); 
    
    % TODO: Extrage canalul verde al imaginii
    Verde = img(:, :, 2);
    
    % TODO: Extrace canalul albastru al imaginii
    Albastru = img(:, :, 3);
    
    % TODO: Aplica functia bicubic pe cele 3 canale ale imaginii
    Albastrufin = bicubic_resize(Albastru, p, q);
    Rosufin = bicubic_resize(Rosu, p, q);
    Verdefin = bicubic_resize(Verde, p, q);
    
    % TODO: Formeaza imaginea finala concatenand cele 3 canale de culori.
    out = cat(3, Rosufin, Verdefin, Albastrufin);
    
endfunction