clc;
a=zeros(1,100);
a(1)=2;
a(2)=3;
for i=3:100
a(i)=a(i-1)+((1/10)*a(i-2));
end
fprintf('el término 100 es %2.2f\n',a(100));