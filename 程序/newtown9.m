function newtown()
%完成
%利用牛顿迭代法求非线性方程组f1(x,y)=0;f2(x,y)=0的解。
%f1=sym('x^2+y^2-1');
%f2=sym('x^3-y');
digits(8);
syms x y;
k=0;
dx=1;dy=1;
f1=input('输入函数 f1表达式:');
f2=input('输入函数 f2表达式:');
e=input('输入控制精度e:');
F=eval(sym('[f1 ; f2]'));
Ja=jacobian(F,[x y]);
D=Ja\(-F);%为降低计算误差,应先求出表达式再带入值
x=input('输入初始值x0:');
y=input('输入初始值y0:');
while abs(dx)>e&abs(dy)>e,
f=vpa(eval(F),8);
d=vpa(eval(D),8);%
dx=eval(d(1));
dy=eval(d(2));
k=k+1,x=x+dx,y=y+dy
end