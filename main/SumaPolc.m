function c = SumaPolc(a,b)

% Function that provides the sum of two polinoms a and b
% of different order

Na = length(a);
Nb = length(b);

Nzerosadd = abs(Na-Nb);

if Na>Nb
    b = [zeros(Nzerosadd,1);b];
elseif Na<Nb
    a = [zeros(Nzerosadd,1);a];
end

c = a+b;