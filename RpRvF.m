function [Rp, Rv] = RpRvF(Z)
% Regresa el pico maximo y el valle minimo del vector
%   Rp es piico maximo, Rv es fondo minimo. Regresa un vector para poder
%  utilizarlo en 'nanorough.m'
    Rp = Z(1);
    Rv = Z(1);
    
    for i = 2:length(Z)
        if Z(i) > Rp
            Rp = Z(i);
        end
        if Z(i) < Rv
            Rv = Z(i);
        end
    end
    
end

