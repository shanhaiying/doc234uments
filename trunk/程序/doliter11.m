function doliter()
%�����ض��ֽ��󷽳���Ľ�,���̵�ϵ��������A������������B
n=input('����������n:');
A=input('����ϵ������A(��ʽΪ[ �� ��]):');
B=input('���볣������B(��ʽΪ[ �� ��]:');
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

   
    
    
