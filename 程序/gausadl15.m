function gaus_sadl()
%完成
%用高斯-塞德尔公式求解方程组fX=B
n=input('enter元数 n:');
e=input('enter 精度e:');
f=zeros(n,n);B=zeros(n,1);DL=zeros(n,n);U=zeros(n,n);X=zeros(n,1);
f=input('enter 系数矩阵(格式为[ ； ；]"):'); 
B=input('enter 常数项(格式为"[a;b;c]"):');
for i=1:n
    for j=1:i;
      DL(i,j)=f(i,j);
  end
end
U=f-DL;
%DL
S=-inv(DL)*U;
F=inv(DL)*B;
X=input('ente初始直(格式为"[a;b;c]"):') ;
x=1;t=0;k=0;
while abs(x-t)>e,
    t=norm(X,Inf);%利用求X得无穷范数来寻找最大项
    k=k+1
     X=S*X+F
     x=norm(X,Inf);%同t
 end
    

