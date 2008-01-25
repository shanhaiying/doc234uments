function m_thrinst()
%完成
%三次样条插值的m方法
%按提示输入各参数即可
n=input('输入点数n:');
X=input('输入坐标X(格式为[a;b;c]):');
Y=input('输入坐标Y(格式为[a;b;c])');
x0=input('输入x0值:');
N=n-1;
h=zeros(N,1);u=zeros(N,1);s=zeros(N,1);c=zeros(N,1);A=2*eye(N-1,N-1);m=zeros(n,1);
    m(1,1)=input('m(0)=:');m(n,1)=input('m(n)=:');
for i=1:n-1,
    h(i)=X(i+1)-X(i);
end
for i=1:n-2,%求各参数
    s(i+1)=h(i+1)/(h(i+1)+h(i));
    u(i+1)=1-s(i+1);
    c(i+1)=3*(s(i+1)*(Y(i+1)-Y(i))/h(i)+u(i+1)*(Y(i+2)-Y(i+1))/h(i+1));
end
c(2)=c(2)-s(2)*m(1);
c(N)=c(N)-s(N)*m(n);
for i=1:n-3;
    A(i+1,i)=s(i+1);
    A(i,i+1)=u(i+1);
end
n=n-2;L=zeros(n,n);U=zeros(n,n);XX=zeros(n,1);YY=zeros(n,1);%解方程组，求m(i)
    for k=1:n,
    for i=k:n,
        U(k,i)=A(k,i)-L(k,:)*U(:,i);
    end
    for j=k:n,
        L(j,k)=(A(j,k)-L(j,:)*U(:,k))/U(k,k);
    end
end
for i=1:n,
    YY(i,1)=c(i+1)-L(i,:)*YY;
end
for i=n:-1:1,
    XX(i,1)=(YY(i,1)-U(i,:)*XX)/U(i,i);
end
for i=1:n,
    m(i+1,1)=XX(i,1);
end
for i=1:n+2,
   if X(i)<=x0&X(i+1)>=x0,
       break
  end
end
disp('结果为:');
S=(1+2*((x0-X(i))/(X(i+1)-X(i))))*(((x0-X(i+1))/(X(i)-X(i+1)))^2)*Y(i)+(x0-X(i))*(((x0-X(i+1))/(X(i)-X(i+1)))^2)*m(i)+(1+2*((x0-X(i+1))/(X(i)-X(i+1))))*(((x0-X(i))/(X(i)-X(i+1)))^2)*Y(i+1)+(x0-X(i+1))*(((x0-X(i))/(X(i)-X(i+1)))^2)*m(i+1)
%求插值S

    

 