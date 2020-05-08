function [Rp,Rv] = RpRv(Z)
% Regresa el pico maximo y el valle minimo del vector
    Rp = Z(1);
    Rv = V(1);
    
    for i = 2:length(Z)
        if Z(i) > Rp
            Rp = Z(i);
        end
        if Z(i) < Rv
            Rv = Z(i);
        end
    end
end

