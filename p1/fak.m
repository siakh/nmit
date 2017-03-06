function [ y ] = fak( n )
if n < 0 | fix(n) ~= n,
    error(['ERROR: FAK ist nur für nicht-negative, ganze Zahlen definiert.'])
end
if n <= 1,
    y = 1;
else
    y = n*fak(n-1);
end

