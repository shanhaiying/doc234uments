function newtown()
%���
%����ţ�ٵ�����������Է�����f1(x,y)=0;f2(x,y)=0�Ľ⡣
%f1=sym('x^2+y^2-1');
%f2=sym('x^3-y');
digits(8);
syms x y;
k=0;
dx=1;dy=1;
f1=input('���뺯�� f1���ʽ:');
f2=input('���뺯�� f2���ʽ:');
e=input('������ƾ���e:');
F=eval(sym('[f1 ; f2]'));
Ja=jacobian(F,[x y]);
D=Ja\(-F);%Ϊ���ͼ������,Ӧ��������ʽ�ٴ���ֵ
x=input('�����ʼֵx0:');
y=input('�����ʼֵy0:');
while abs(dx)>e&abs(dy)>e,
f=vpa(eval(F),8);
d=vpa(eval(D),8);%
dx=eval(d(1));
dy=eval(d(2));
k=k+1,x=x+dx,y=y+dy
end