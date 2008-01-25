clear;
x=[-1,-0.5,0,0.25,0.75];
y=[0.22,0.80,2.00,2.50,3.80];

n=length(x);
z=ones(1,n);
M=zeros(2,2);%一次多项式拟和
b=zeros(2,1);
a=zeros(2,1);
M(1,1)=n;
M(1,2)=sum(x);
M(2,1)=M(1,2);
M(2,2)=sum(x.^2);
b(1,1)=dot(y,z);
b(2,1)=dot(y,x);
a=double(linsolve(M,b))';
temp=[num2str(a(1,1)),'+','(',num2str(a(1,2)),')*x'];
['一次多项式拟和结果',char(sym(temp))]
['total square error:',num2str(dot((subs(sym((temp)),'x',x)-y).^2,z))]


hold on
fplot(temp,[min(x),max(x)])
plot(x,y,'k.');
hold off



M=zeros(3,3);%二次多项式拟和
b=zeros(3,1);
a=zeros(3,1);
M(1,1)=n;
M(1,2)=dot(x,z);
M(2,1)=dot(x,z);
M(2,2)=dot(x,x);
M(1,3)=sum(x.^2);
M(3,1)=M(1,3);
M(2,3)=dot(x,x.^2);
M(3,2)=dot(x,x.^2);
M(3,3)=dot(x.^2,x.^2);
b(1,1)=dot(y,z);
b(2,1)=dot(y,x);
b(3,1)=dot(y,x.^2);
a=double(linsolve(M,b))';
temp=[num2str(a(1,1)),'+','(',num2str(a(1,2)),')*x','+(',num2str(a(1,3)),')*x^2',];
['二次多项式拟和结果',char(sym(temp))]
['total square error:',num2str(dot((subs(sym((temp)),'x',x)-y).^2,z))]
hold on
fplot(temp,[min(x),max(x)])
plot(x,y,'k.');
hold off
pause
