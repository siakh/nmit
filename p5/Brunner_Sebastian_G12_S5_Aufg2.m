% Aufgabe 2a)

k=zeros(50,1);
alpha=[0.25:0.25:4];
for i=1:16,
    k(1)=0.1;
    alphaI=alpha(i);
    for j=1:50,
        k(j+1)=alphaI*k(j)*(1-k(j));
        
    end
    subplot(4,4,i);
    plot(k);
    legend(strcat('alpha: ',num2str(alphaI)));
end

% Aufgabe 2b)
% 
% Fixpunkt = Konstante Rate von kranke Kinder (z.B. Fixpunkt = 0.3 -> Es sind immer 30% Kinder krank.
%
%
% Aufgabe 2c)
%
% Fixpunktgleichung nach alpha auflösen:
%
% k=alpha*k(1-k)
% alpha=1/(1-k)
%
% z.B. alpha = 2 -> k = 0.5, deckt sich mit dem plot aus Aufgabe 2a)