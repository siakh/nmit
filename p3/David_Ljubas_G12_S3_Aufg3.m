function [y,value,abs_err,rel_err] = David_Ljubas_Aufg3(x,B,nmax)
    
    % Pr�fe ob Basis kleiner 16
    if B > 16,
        error('B > 16');
    end

    integerPart = fix(x);
    decimalPart = x - integerPart;
    
    charSet = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'}
    
    i = nmax;
    yIntegerPart = '';
    yDecimalPart = '';
    
    % Ganzzahligeranteil umwandeln
    while integerPart > 0,
        r = mod(integerPart,B) + 1;
        integerPart = fix(integerPart/B);
        yIntegerPart = strcat(strjoin(charSet(1,r)),yIntegerPart);    
    end
    
    % Dezimalanteil umwandeln
    while i > 0,
        index = fix(B * decimalPart);
        decimalPart = B * decimalPart - index;
        index = index+1;
        yDecimalPart = strcat(yDecimalPart,strjoin(charSet(1,index))); 
        i = i-1;
    end

    e = strcat(yIntegerPart,yDecimalPart);
    
    %Zahl abschneiden
    if length(e) > nmax,
        e = e(1:nmax);
    end
    
    exponent = length(yIntegerPart);
       
    % Wert berechnen
    value = 0;
    for n = 1 : length(e),
        exponent = exponent - 1;
        s = strfind(charSet,e(n));
        z = 0;
        for f = 1 : length(s),
           if isempty(cell2mat(s(1,f))) == 0,
                if strcmp(e(n),charSet(1,f)) == 1,        
                    z = f-1;
                end    
           end
        end     
        value = value + z * B^exponent;
    end
    
    d = '0.';
    % Pr�fe Zahl ob < 0
    if x < 0,
        d = strcat('-',d);
        value = (-1)*value;
    else
        d = strcat('+',d);
    end
    
    % Formatiere y
    baseAndExponent = ' *';
    baseAndExponent = strcat(baseAndExponent,num2str(B));
    baseAndExponent = strcat(baseAndExponent,'^');
    baseAndExponent = strcat(baseAndExponent,num2str(length(yIntegerPart)));
    y = strcat(d,e);
    y = strcat(y,baseAndExponent);
    
    % Absoluter Fehlerbetrag
    abs_err=abs(x-value);
    
    % Relativer Fehlerbetrag
    rel_err=abs(x-value)/abs(x);
    
    
% Beispiel Aufruf:
% [y,value,abs_err,rel_err]=David_Ljubas_G12_S3_Aufg3(855.321,8,7)
%
% charSet = 
%
%    '0'    '1'    '2'    '3'    '4'    '5'    '6'    '7'    '8'    '9'    'A'    'B'    'C'    'D'    'E'    'F'
%
%
% y =
%
% +0.1527244 *8^4
%
%
% value =
%
%  855.3203
%
%
% abs_err =
%
%   6.8750e-04
%
%
% rel_err =
%
%  8.0379e-07
    

