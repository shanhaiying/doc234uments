function y=ex1_8(x,f);
n=length(x);
y=0;
for i=1:n
    temp=1;
    for j=1:n
        if (i~=j)
            temp=temp*(x(i)-x(j));
        end
    end
    y=y+f(x(i))/temp;
end
