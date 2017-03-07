function [x]  = p2Aufg4()
%P2AUFGABE3 Summary of this function goes here
%   Detailed explanation goes here
% 
clear x;
x= 1;
while 1+x/2~=1
    x = x/2;
end
%x= 2 * x;
%die multiplikation ist unwichtig.!
disp(['Maschinengenauigkeit:',num2str(x)])



end

