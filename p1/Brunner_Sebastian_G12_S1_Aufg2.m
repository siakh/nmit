function [y, ydiff, yint] = S1_AUfg2(a, xmin, xmax)
%order,
n=length(a)-1
%x-vector
step=(xmax-xmin)/1000;
x=xmin:step:xmax;
%calculate y, ydiff, yint
y=0;
ydiff=0;
yint=0;
for i=0:n,
    y=y+a(i+1)*x.^(n-i)
    ydiff=ydiff+(n)*a(i+1)*x.^(n-1-i);
    yint=yint+(1/(n+1))*a(i+1)*x.^(n+1-i);
end
plot(x,y,'g',x,ydiff,'r',x,yint);
xlim([xmin xmax]);
end

