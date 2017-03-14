%Aufgabe 3a) + 3b)
lastside=1;
lastside2=1;
for count=1:10,
        n=6*2^(count);
        side=sqrt(2-2*sqrt(1-(lastside^2)/4));
        side2=sqrt(lastside2^2/(2*(1+sqrt(1-(lastside2^2/4)))));
        sum=n.*side
        sum2=n.*side2
        lastside=side;
        lastside2=side2;
        subplot(4,3,count);
        plot(n,sum,'.', n, sum2, '.')
        legend('Aufg 3a)', 'Aufg 3b)')
        
end
