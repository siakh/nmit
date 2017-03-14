function [y, value, abs_err, rel_err] = aufg3( x, B, nmax )
%AUFG3 Summary of this function goes here
%   Detailed explanation goes here


%Tests

%Calculate integral part (ganzzahliger Anteil)
z1=abs(fix(x));
z2=abs(x)-z1;

%Transform integral part in new base B
div=z1;
count=0;
dummy1(1)='0';
dummy2(2)='0';

while div > 0,
   %Umrechnung für ganzzahligen Anteil 
   count=count+1;
   dummy1(count)=num2str(mod(div, B))
   div=fix(div/B); 
end

dummy2
mult = z2*B;
count=0;
dummy3 = char(nmax);
dummy3(1:nmax)='0';
while mult ~= 0 && count <= nmax,
    %Umrechnung Nachkommaanteil
    
end

%Ausgabe als y inklusive Vorzeichen und Punkt.

% Berechnung des Fehlers



end

