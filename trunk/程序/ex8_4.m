function [y,x]=Runge_Kutta(f,z,z0);
% calculate the differential equations dy/dx=f(x,y)
% 
%f:the function handle
%z:
x=z;
n=length(z);
y=zeros(1,n);
h=z(2)-z(1);
y(1)=z0;
for i=2:n
    k1=f(x(i-1),y(i-1));
    k2=f(x(i-1)+0.5*h,y(i-1)+0.5*h*k1);
    k3=f(x(i-1)+0.5*h,y(i-1)+0.5*h*k2);
    k4=f(x(i-1)+h,y(i-1)+h*k3);
    y(i)=y(i-1)+h/6*(k1+2*k2+2*k3+k4);
end
if nargout==0
    hold on;
    plot(x,y);
    title('The resolution of the differential equations');
    axis([z(1),z(n),min(y),max(y)]);
    hold off;
end
if nargin==1
    error('Wrong input argument');
end

    
    
    
