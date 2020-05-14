function [P] = PF(Z)
%Regresa vector P
%   length(P) = numero de montanias y P(i) es el pico mas alto de cada
%  montania
b = false;
P = [];

    for i = 1:length(Z)
        if Z(i) >= ZpromF(Z)
            if b == true
                if Z(i) >= cont
                    cont = Z(i);
                end
            else
                cont = Z(i);
                b = true;
            end
        else
            if b == true
                P = [P, cont];
                b = false;
            end
        end
    end
    if Z(1) > ZpromF(Z)
        P(1) = [];
    end
end
