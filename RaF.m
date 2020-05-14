function [Ra] = RaF(Z)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
cont = 0;
for i = 1:length(Z)
    cont = cont + (abs(Z(i) - (ZpromF(Z))));
end
Ra = (1/length(Z))* cont;

end

