function [ root, xit, n ] = Brunner_Sebastian_G12_S4_Aufg2(func,a,b,tol)
    if func(a)*func(b) >= 0,
        error(['keine Nullstellen in diesem Intervall']);
    end
    format long e;
    n=0;
    xit=[];
    Nmax=1000;
    while abs(a-b)>tol && Nmax>0, 
        n=n+1;
        if func((a+b)/2)*func(a)<=0,
            a=a;
            b=(a+b)/2;
            xit(n)=b;
        else
            a=(a+b)/2;
            b=b;
            xit(n)=a;
        end
        Nmax=Nmax-1;
    end
    root=(a+b)/2;
end