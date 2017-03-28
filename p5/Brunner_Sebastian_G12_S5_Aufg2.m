k=zeros(50,1);
alpha=[0:0.25:4]
for i=1:16,
    k(1)=0.1;
    alphaI=alpha(i);
    for j=1:50,
        k(j+1)=alpha*k(j)*(1-k(j));
    end
    plot();
end