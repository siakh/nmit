%Aufgabe a)
x=linspace(1.99,2.01,501);
f1=x.^7-14*x.^6+84*x.^5-280*x.^4+560*x.^3-672*x.^2+448*x-128;
f2=(x-2).^7;
subplot(1,3,1)
plot(x,f1,'r',x,f2,'g')

%Aufgabe b)
z=[-10^-14:10^-17:10^-14];
g=z./(sin(1+z)-sin(1));
subplot(1,3,2)
plot(z,g,'r')
%Nein, Berechnung des limes ist nicht stabil


%Aufgabe c)
g=z./(2*cos((2+z)/2).*sin(z/2));
subplot(1,3,3)
plot(z,g,'b')

%limes = 1.8508


