x = 0:0.1:100

f = @(x) 5./(2.*x.^2).^(1/3)
g = @(x) 10^5*(2*exp(1)).^(-1*x./100)
h = @(x)((10.^(x.*2))./(2.^(x.*5))).^2

subplot(2,2,1)
loglog(x,f(x))
title('Funktion f')

subplot(2,2,2)
semilogy(x,g(x))
title('Funktion g')

subplot(2,2,3)
semilogy(x,h(x))
title('Funktion h')