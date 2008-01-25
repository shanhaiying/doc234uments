function gauss()
%调用格式:gauss
%本程序是利用列主元高斯消去法求A的行列式。
n=input('enter阶数n:');
A=zeros(n,n);e=0;DET=1;d=zeros(1,n);
A=input('enter 行列式A(格式为[ ； ； ；]):');
for i=1:n-1
%b=A(:,i);
b=zeros(n,1);
for j=i:n
    b(j)=A(j,i)
end
max=norm(b,Inf);%利用求X得无穷范数来寻找最大项
for j=i:n
    if(A(j,i)==max)
        break;
    end
end
j
if j~=i
d=A(i,:);
A(i,:)=A(j,:);
A(j,:)=d;
e=e+1;
end
for j=i:(n-1)
%for l=j:n
A(j+1,i:n)=A(j+1,i:n)-(A(j+1,i)*A(i,i:n))/A(i,i)

%end
end
end
for i=1:n
DET=A(i,i)*DET
end
DET=((-1)^e)*DET
disp('A的行列式DET是：')
DET
