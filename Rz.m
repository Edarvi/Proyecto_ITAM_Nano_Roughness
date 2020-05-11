function [Rz] = Rz(P, V)
% average profile is the average found from de P greatest peaks
% and V greatest valleys

    Rz = (sum(P)+sum(V))/(length(P)+length(V));
end

