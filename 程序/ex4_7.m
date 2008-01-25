
error=0.0001;

x0=1;
x1=3;
while 1
    temp=(x1^3-3*x1-2)*(x1-x0)/(x1^3-3*x1-2-(x0^3-3*x0-2));
    if abs(temp)<=error
        break
    end
x0=x1;
x1=x1-temp;
end
['x^3-3*x-2=0的根为(多点迭代 x0=1,x1=3)：',num2str(x1)]
