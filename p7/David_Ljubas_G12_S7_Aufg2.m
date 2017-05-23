% Beispiel Aufruf
% [A_triangle,detA,x] = David_Ljubas_G12_S7_Aufg2([1 5 6; 7 9 6; 2 3 4], [29; 43; 20])
function [A_triangle,detA,x] = David_Ljubas_G12_S7_Aufg2(A,b)

    dimensionA = size(A);
    dimensionB = size(b);
    changes = 0;
    n = dimensionA(1:1,1:1);
    x = zeros(n,1);
    
    if dimensionA(1:1,1:1) ~= dimensionA(1:1,2:2),
        error('A ist nicht quadratisch');
    end
   
    if dimensionB(1:1,1:1) ~= n | dimensionB(1:1,2:2) ~= 1,
        error('B ist kein Vektor n x 1');
    end
    
    Ab = [A, b];
    
    for i = 1 : n-1,
        
        % Prüfe ob Diagonalelement a(ii) != 0
        if Ab(i:i,i:i) == 0,
            isRegulary = 0;
            for j = i + 1 : n,
                if Ab(j:j,i:i) ~= 0,
                    % Elementare Zeilenumformung (Zeilen vertauschen) 
                    % P(ij) = I(m) - E(ii) + E(ij) - E(jj) + E(ji)
                    % P(ij) * A
                    isRegulary = 1;
                    inv = eye(n);
                    eii = zeros(n);
                    eii(i:i, i:i) = 1;
                    eij = zeros(n);
                    eij(i:i, j:j) = 1;
                    ejj = zeros(n);
                    ejj(j:j, j:j) = 1;
                    eji = zeros(n);
                    eji(j:j, i:i) = 1;
                    pij = inv - eii + eij - ejj + eji;
                    Ab = pij * Ab;
                    changes = changes + 1;
                    break;
                end
            end
            % Ist Matrix regulär
            if isRegulary == 0,
                error('Matrix ist nicht regulär');
            end
        end
        
        % Eliminationsschritt
        for j = i+1 : n,        
           Ab(j,:) = Ab(j,:) - (Ab(j:j,i:i)/Ab(i:i,i:i) * Ab(i,:)) 
        end
    end
    A_triangle = Ab(1:n,1:n);
    
    detA = 1;
    % Determinante berechnen
    for i = 1 : n,
        detA = detA * Ab(i:i,i:i);
    end
    
    detA = (-1)^changes * detA;
    
    % Berechne x
    for z = 1 : n,
        i = (n + 1) - z;
        summe = 0;
        for j = i + 1 : n,
            summe = summe + Ab(i:i,j:j) * x(j:j,1:1);
        end
        x(i:i, 1:1) = (Ab(i:i,n+1:n+1) - summe) / Ab(i:i,i:i);
    end
    
    