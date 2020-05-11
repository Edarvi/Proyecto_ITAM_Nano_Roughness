function [Rsk] = Rsk(Z, Rq)
% Regresa la tendencia de picos y valles de Z
%   Rsk < 0 = predominación de picos, Rsk > 0 = predominacion de valles.
    Zprom = mean(Z);
    cont = 0;
    
    for i = 1:length(Z)
        cont = cont+Z(i)-Zprom;
    end
    Rsk = (cont^3)/(length(Z)*Rq^3);
end

