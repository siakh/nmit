function [ y ] = Brunner_Sebastian_G12_S6_Aufg3( f, x0, x1, tol )
x=[];
x(1)=x0;
x(2)=x1;
n=2;
while (f(x(n))+tol)*(f(x(n))-tol)>=0,
    n=n+1;
    xn=x(n-1);
    xn_minus_1=x(n-2);
    x(n)=xn-((xn-xn_minus_1)/(f(xn)-f(xn_minus_1)))*f(xn);
end
y=x(n);
end

% Berechnung der Ableitung ist zu kompliziert. Für beliebige Funktion f
% zurzeit noch nicht möglich.
