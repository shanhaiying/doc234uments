function sinpsen()
%���
%��������ɭ�Զ���������㷨����f(x)�Ļ���
%��Ҫ����������������
syms x;
f=input('����f(x)�ĺ������ʽ:');
e=input('������ƾ���e:');
a=input('���������½ڵ�a��ֵ:');
b=input('���������Ͻڵ�b��ֵ:');
n=1;err=2*e;T2=0;
while err>e,%������
    T1=0;
    i=-1;n=2*n;
    for x=a:(b-a)/n:b,%����n�ڵ�����ɭ���ֵ�ֵ
        i=i+1;
        if(i==0|i==n)
            T1=eval(f)+T1;
            continue;
        end
       T1=((3+(-1)^(i-1)))*eval(f)+T1;
   end
   T1=(b-a)/(3*n)*T1;
   err=abs(T2-T1)/3;
   if err<=e,%����������Ҫ������ֹ����
       disp('������:');%������
       disp(['S=',num2str(T1)]);
       return;
   end
   i=-1;n=2*n;T2=0;
   for x=a:(b-a)/n:b,%����2n�ڵ�����ɭ���ֵ�ֵ
        i=i+1;
        if(i==0|i==n)
            T2=eval(f)+T2;
            continue;
        end
       T2=((3+(-1)^(i-1)))*eval(f)+T2;
   end
   T2=((b-a)/(3*n))*T2;
   err=abs(T2-T1)/3;%���
end
disp('������:');%������
disp(['S=',num2str(T2)]);