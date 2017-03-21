function [ root, xint, n ] = Brunner_Sebastian_G12_S4_Aufg2(func,a,b,tol)
    if func(a)*func(b) >= 0,
        error(['keine Nullstellen in diesem Intervall']);
    end
    n=0;
    xint=[];
    while abs(a-b)>tol, 
    n=n+1;
    xint(n)=func((a+b)/2)*func(a);
    if xint(n)<=0,
        a=a;
        b=(a+b)/2;
    else
        a=(a+b)/2;
        b=b;
    end
    
    end
    root=(a+b)/2;
end