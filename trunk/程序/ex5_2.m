clear
a=[7.2 2.3 -4.4 0.5 15.1;...
   1.3 6.3 -3.5 2.8 1.8;...
   5.6 0.9 8.1 -1.3 16.6;...
   1.5 0.4 3.7 5.9 36.9];
n=size(a,1);
x=zeros(1,n);
for i=1:n-1
    for j=i+1:n
        a(j,:)=a(j,:)-a(i,:)/a(i,i)*a(j,i);
    end
end
i=n;
while i>0
    x(i)=a(i,n+1)-sum(x.*a(i,1:n));
    x(i)=x(i)/a(i,i);
    i=i-1;
end
'结果如下：'
x


