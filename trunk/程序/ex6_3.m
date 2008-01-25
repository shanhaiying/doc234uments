function x=ex6_3(A,b)
[n,m]=size(A);
if (n~=m) or (size(b)~=[n,1])
    error('The matrix must be square');
end
e=1e-3;
Max=1000;
x=zeros(n,1);
for k=1:Max
    temp=x;
    for i=1:n
        temp1=x(i,1);
        x(i,1)=(b(i,1)-dot(x',A(i,:)))/A(i,i)+temp1;
    end
    if max(abs(x-temp))<=e
        break
    end
end