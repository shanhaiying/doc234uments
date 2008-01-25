function nalagr()
%用途:lagrange插值法数值求解
%格式：yy=nalagr(x,y,xx) x是节点向量，y是节点上的函数值，yy是插值点
%yy返回插值
x=input('输入节点向量x:');
y=input('输入节点函数向量y:');
xx=input('输入插值点xx:');
m=length(x);n=length(y);
if m~=n,error('!!!!');end
    s=0;
    for i=1:n
        t=ones(1,length(xx));
        for j=1:n
            if j~=i,
                t=t*(xx-x(j))/(x(i)-x(j));
            end
        end
        s=s+t*y(i);
    end
    yy=s
                