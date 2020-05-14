function [Zv] = Funcion1(Z)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
cont = 0;
for i = 1:length(Z)
    cont = cont + (Z(i));
end
Zv = (1/length(Z))* cont;

end

