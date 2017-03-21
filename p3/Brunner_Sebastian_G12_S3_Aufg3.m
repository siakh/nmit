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
   dummy1(count)=num2str(mod(div, B));
   div=fix(div/B); 
end

dummy2=flip(dummy1);



mult = z2*B;
count=0;
dummy3 = char(nmax);
dummy3(1:nmax)='0';
while mult ~= 0 && count < nmax,
    %Umrechnung Nachkommaanteil
    count=count+1;
    dummy3(count)=num2str(fix(mult));
    mult=(mult-fix(mult))*B;
end
format short e
value=x;
valuestring=strcat('value = %0.',num2str(nmax),'e\n');

format long
fprintf(valuestring,value);
y=strcat(num2str(sign(x)*str2num(dummy2)),'.',dummy3);  
%Ausgabe als y inklusive Vorzeichen und Punkt.
fprintf('y = %s\n', y);
% Berechnung des Fehlers
length=numel(dummy2);
dummy4=0;
dummy5=0;
for i=1:length,
    dummy4=dummy4+str2num(dummy2(i))*B^(length-i);
    dummy5=dummy5+str2num(dummy3(i))*B^(-i);
end
format long
dummy4
dummy5
x
abs(x)
abs_err=(x-abs(x))
end

