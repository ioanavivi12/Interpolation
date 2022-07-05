function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
   
    % TODO: Extrage canalul rosu al imaginii.
    Rosu = img(:, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    Verde = img(:, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    Albastru = img(:, :, 3);

    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    Rosu = proximal_rotate(Rosu, rotation_angle);
    Verde = proximal_rotate(Verde, rotation_angle);
    Albastru = proximal_rotate(Albastru, rotation_angle);
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, Rosu, Verde, Albastru);
    
endfunction