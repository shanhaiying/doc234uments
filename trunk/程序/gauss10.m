function gauss()
%���ø�ʽ:gauss
%����������������Ԫ��˹��ȥ����A������ʽ��
n=input('enter����n:');
A=zeros(n,n);e=0;DET=1;d=zeros(1,n);
A=input('enter ����ʽA(��ʽΪ[ �� �� ��]):');
for i=1:n-1
%b=A(:,i);
b=zeros(n,1);
for j=i:n
    b(j)=A(j,i)
end
max=norm(b,Inf);%������X���������Ѱ�������
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
disp('A������ʽDET�ǣ�')
DET
