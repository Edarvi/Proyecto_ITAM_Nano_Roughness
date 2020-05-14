function [Rsk] = RskF(Z, Rq)
% Regresa la tendencia de picos y valles de Z
%   Rsk < 0 = predominación de picos, Rsk > 0 = predominacion de valles.
    cont = 0;
    for i = 1:length(Z)
        cont = cont+(((Z(i)-ZpromF(Z))^3));
    end
    Rsk = (1/(length(Z)*Rq^3))*(cont);
end

