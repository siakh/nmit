% Gleichung: A4 * x = B4 im Script

% Antwort: mldivide ist der Gauss-Algorithmus ohne Pivotisierung und
% linsolve nutzt die LR-Zerlegung und Spaltenpivotisierung. 
% Aufgrund der Spaltenpivotisierung hat linsolve kleinere Rundungsfehler
% als mldivide. Unsere Funktion hat den normalen Gaussalgorithmus
% implementiert ohne Spaltenpivotisierung. 
%
% Konklusion:
% 1. Unser Gaussalgorithmus und mldivide (Backslash) ergeben gleiche
% Resultate
% 2. linsolve ist genauer als unser Gaussalgorithmus und mldivide

A4 = [-1 2 3 2 5 4 3 -1; 
       3 4 2 1 0 2 3 8;
       2 7 5 -1 2 1 3 5;
       3 1 2 6 -3 7 2 -1;
       5 2 0 8 7 6 1 3;
       -1 3 2 3 5 3 1 4;
       8 7 3 6 4 9 7 9;
       -3 14 -2 1 0 -2 10 5];

B4 = [-11;
      103;
      53;
      -20;
      95;
      78;
      131;
      -26];

[A_triangle,detA,x] = David_Ljubas_G12_S7_Aufg2(A4,B4);
xMlDivide = A4\B4;
xLinSolve = linsolve(A4,B4);

