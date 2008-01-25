clear;
x=[-2,-1,1,2];
y=[-4,3,5,12];
n=length(x);
h=zeros(1,n-1);
a=zeros(1,n-2);
b=zeros(1,n-2);
for i=1:n-1
    h(i)=x(i+1)-x(i);
end
for i=1:n-2
    a(i)=h(i+1)/(h(i+1)+h(i));
    b(i)=1-a(i);
    d(i)=6/(h(i)+h(i+1))*((y(i+2)-y(i+1))/h(i+1)-(y(i+1)-y(i))/h(i));  
end
Matrixa=zeros(n-2,n-2);
for i=1:n-2
    Matrixa(i,i)=2;
    if (i~=1)
       Matrixa(i,i-1)=b(i);
    end
    if (i~=n-2)
        Matrixa(i,i+1)=a(i);
    end
end
M=zeros(n-2,1);
M=linsolve(Matrixa,d');
M=M';
M=[0,M,0];
M=double(M);
hold on
for i=1:n-1
    ['在区间 [',num2str(x(i)),',',num2str(x(i+1)),']上的样条函数为:']
    temp=['(',num2str(x(i+1)),'-x)^3*','(',num2str(M(i)/6/h(i)),')'...
    '+(',num2str(x(i)),'-x)^3*','(',num2str(-M(i+1)/6/h(i)),')'...
    '+(',num2str(x(i+1)),'-x)*','(',num2str(y(i)/h(i)),')'...
    '+(',num2str(x(i)),'-x)*','(',num2str(-y(i+1)/h(i)),')',...
    '-','(',num2str(x(i+1)),'-x)*','(',num2str(M(i)/6*h(i)),')',...
    '-(',num2str(x(i)),'-x)*','('num2str(-M(i+1)/6*h(i)),')'];  
   fplot(temp,[x(i),x(i+1)]);
   text(x(i)+0.2,y(i)+1.5,char(simple(sym(temp))))
   pretty(sym(temp))
   
end
axis auto
title('三次样条函数');
hold off

end