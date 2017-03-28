%Aufgabe 3a)

[root,xit,n]=Brunner_Sebastian_G12_S4_Aufg2(@(x) x.^2-2,0,2,10^-15);
x=[1:1:n];  
f=abs(xit(x)-root);
subplot(3,1,1);
semilogy(x,f,'b');

[root,xit,n]=Brunner_Sebastian_G12_S4_Aufg2(@(x) x^2-2,0,2,10^-16);
x=[1:1:n];
g=abs(xit(x)-root);
subplot(3,1,2);
semilogy(x,g,'r');

%Der Aufruf mit Toleranz 10^-16 kam zuerst zu keinem Ergebnis. Dies wurde
%umgangen, indem in Aufgabe 2 eine maximale Anzahl von Iteration(Nmax=1000=
%definiert wurde. 
%Das Ergebnis ist ungefähr eine Gerade, was bedeutet, dass der absolute
%Fehler exponentiell zu n abnimmt. 



%Aufgabe 3b)

tol=[];
f=[];
index=1;
for i=-1:-1:-20,
    tol(index)=10^i;
    [root,xit,n]=Brunner_Sebastian_G12_S4_Aufg2(@(x) x^2-2,0,2,tol(index));
    f(index)=n;
    index=index+1;
end
subplot(3,1,3);
loglog(tol,f, 'r');

% Die Funktion gibt eine gekrümmte Kurve zurück(ausgenommen der Bereich ab
% 10^⁻16, wo die Anzahl Iterationen ins Unendliche steigt, künstlich begrenzt durch Nmax)
% Daraus lässt sich schliessen, dass die Anzahl Iterationen nicht
% exponentiell zur Toleranz ansteigt.

