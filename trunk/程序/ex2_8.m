h=0.2;
x=0.6:h:1.8;
y=[5.7,4.6,3.5,3.7,4.9,5.2,5.5];
n=length(y);
weight=ones(1,n-2);
weight=[0.5,weight,0.5]*h;
['复化梯形公式的计算结果是：',num2str(dot(y,weight))]
weight=ones(1,n-2);
for i=1:n-2
    if (mod(i,2)==0)
        weight(i)=2;
    else weight(i)=4;
    end
    
end
weight=[1,weight,1]*h/3;
['复化simpson公式的计算结果是：',num2str(dot(y,weight))]