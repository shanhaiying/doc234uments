function gaus_sadl()
%���
%�ø�˹-���¶���ʽ��ⷽ����fX=B
n=input('enterԪ�� n:');
e=input('enter ����e:');
f=zeros(n,n);B=zeros(n,1);DL=zeros(n,n);U=zeros(n,n);X=zeros(n,1);
f=input('enter ϵ������(��ʽΪ[ �� ��]"):'); 
B=input('enter ������(��ʽΪ"[a;b;c]"):');
for i=1:n
    for j=1:i;
      DL(i,j)=f(i,j);
  end
end
U=f-DL;
%DL
S=-inv(DL)*U;
F=inv(DL)*B;
X=input('ente��ʼֱ(��ʽΪ"[a;b;c]"):') ;
x=1;t=0;k=0;
while abs(x-t)>e,
    t=norm(X,Inf);%������X���������Ѱ�������
    k=k+1
     X=S*X+F
     x=norm(X,Inf);%ͬt
 end
    

