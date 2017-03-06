function [ y ] = S1_Aufg3( n )
if n < 0 | fix(n) ~= n,
    error(['ERROR: FAK ist nur für nicht-negative, ganze Zahlen definiert.'])
end
y=1;
for i=1:n-1,
    y=y+i*y;
end
% Bei tiefen n ist rekursive Variante schneller. Je grösser n, desto
% kleiner wird Unterschied, bis irgendwann die rekursive Variante länger
% braucht. Ab einer gewissen Grösse von n gibt rekursive Variante einen
% Fehler (Out of Memory) aus, da jeder rekursionsaufruf in Memory
% gespeichert wird.
end

