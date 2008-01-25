function [u,y]=Eigenvalue(A)
[n,m]=size(A);
e=1e-4;
if (m~=n) error('The matrix should be square');
end 
x1=ones(n,1);
if (x1==A*x1) 
    x1=zeros(n,1);
    x1(1)=1;
else 
x1=ones(n,1);
end
x2=x1;
x3=x2;
x4=x3;
i=0;


while 1
    x2=A*x1;
    x2=x2/max(abs(x2));
    x3=A*x2;
    x3=x3/max(abs(x3));
    x4=A*x3;
    x4=x4/max(abs(x4));
    if max(abs(x1-x2))<e & max(abs(x2-x3))<e & max(abs(x3-x4))<e 
        u=max(abs(A*x4));
        y=x4;
        break;
    end
    
    if max(abs(x1+x2))<e & max(abs(x2+x3))<e & max(abs(x3+x4))<e 
        u=-max(abs(A*x4));
        y=x4;
        break;
    end
    
    if max(abs(x1-x3))<e & max(abs(x2-x4))<e 
        temp=max(abs(A*x4));
        u=[temp,-temp];
        y(1)=A*x4+temp*x4;
        y(2)=A*x4-temp*x4;
        break;
    end
    x1=x4;
    i=i+1;
    if (i>1000) break;
    end
    
 end
    
    
    