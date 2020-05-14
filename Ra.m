function [Ra] = Function2(Z, Zv , n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
i=0;

syms i;
f = abs(Z - Zv);
V = subs (f, i, 1:n);
Ra = 1/n * (sum(V));
end

