function [x1 y1 x2 y2] = surrounding_points(n, m, x, y)
    % =========================================================================
    % Calculeaza cele 4 puncte ce contin in interior (x, y)
    % Primeste si dimensiunea unei imagini m x n, pentru a asigura ca nu se
    % iese din matrice.
    % =========================================================================
    
    % TODO: Calculeaza x1, y1, x2, y2
    x1 = x;
    x1 = floor(x1);
    x2 = x1 + 1;
    y1 = y;
    y1 = floor(y1);
    y2 = y1 + 1;
    % TODO: daca y se afla pe ultima linie, asigura ca y2 nu o sa iasa din
    if (y == m)
      y1 --;
      y2 --;
    endif
    % TODO: analog daca x se afla pe ultima coloana
    if (x == n)
      x1 --;
      x2 --;
    endif
    
endfunction