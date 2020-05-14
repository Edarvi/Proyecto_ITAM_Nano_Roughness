function [V] = V(Z,Zprom)
%Regresa vector V
%   length(V) = numero de valles y V(i) es el fondo mas profundo de cada
%  valle
b = false;
V = [];

    for i = 1:length(Z)
        if Z(i) < Zprom
            if b == true
                if Z(i) < cont
                    cont = Z(i);
                end
            else
                cont = Z(i);
                b = true;
            end
        else
            if b == true
                V = [V, cont];
                b = false;
            end
        end
    end
    if Z(1) < Zprom
        V(1) = []; 
    end
end

