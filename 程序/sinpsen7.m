function sinpsen()
%完成
%复化辛普森自动控制误差算法计算f(x)的积分
%按要求输入各项参数即可
syms x;
f=input('输入f(x)的函数表达式:');
e=input('输入控制精度e:');
a=input('输入区间下节点a的值:');
b=input('输入区间上节点b的值:');
n=1;err=2*e;T2=0;
while err>e,%误差控制
    T1=0;
    i=-1;n=2*n;
    for x=a:(b-a)/n:b,%计算n节点辛普森积分的值
        i=i+1;
        if(i==0|i==n)
            T1=eval(f)+T1;
            continue;
        end
       T1=((3+(-1)^(i-1)))*eval(f)+T1;
   end
   T1=(b-a)/(3*n)*T1;
   err=abs(T2-T1)/3;
   if err<=e,%若精度满足要求，则终止程序
       disp('计算结果:');%输出结果
       disp(['S=',num2str(T1)]);
       return;
   end
   i=-1;n=2*n;T2=0;
   for x=a:(b-a)/n:b,%计算2n节点辛普森积分的值
        i=i+1;
        if(i==0|i==n)
            T2=eval(f)+T2;
            continue;
        end
       T2=((3+(-1)^(i-1)))*eval(f)+T2;
   end
   T2=((b-a)/(3*n))*T2;
   err=abs(T2-T1)/3;%误差
end
disp('计算结果:');%输出结果
disp(['S=',num2str(T2)]);