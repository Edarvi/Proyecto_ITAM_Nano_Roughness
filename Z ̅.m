function [Zv] = Function1(Z, n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
i=0;

syms i;
V = subs (Z, i, 1:n);
Zv = 1/n * (sum(V));
end

