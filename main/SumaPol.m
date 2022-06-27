function c = SumaPol(a,b)

% Function that provides the sum of two polinoms a and b
% of different order

Na = length(a);
Nb = length(b);

Nzerosadd = abs(Na-Nb);

if Na>Nb
    b = [zeros(1,Nzerosadd),b];
elseif Na<Nb
    a = [zeros(1,Nzerosadd),a];
end

c = a+b;