function  three()
%完成
%多利特尔分解求三对角方程组的解,方程的系数矩阵是A，常数向量是B
n=input('输入矩阵阶数n:');
A=zeros(n,n);
A(1,1:2)=input('输入系数矩阵A的三对角第一行非零元素(格式为[ ； ；]两个):');
for i=2:n-1
A(i,i-1:i+1)=input('输入系数矩阵A的三对角菲零元素(格式为[ ； ；]):');
end
A(n,n-1:n)=input('输入系数矩阵A的三对角第n行非零元素(格式为[ ； ；]两个):');
i=0;
B=input('输入常数向量B(格式为[ ； ；]:');
L=zeros(n,n);U=zeros(n,n);X=zeros(n,1);Y=zeros(n,1);
for k=1:n,
    for i=k:n,
        U(k,i)=A(k,i)-L(k,:)*U(:,i);
    end
    for j=k:n,
        L(j,k)=(A(j,k)-L(j,:)*U(:,k))/U(k,k);
    end
end
L
U
for i=1:n,
    Y(i,1)=B(i)-L(i,:)*Y;
end
for i=n:-1:1,
    X(i,1)=(Y(i,1)-U(i,:)*X)/U(i,i);
end
Y
X
