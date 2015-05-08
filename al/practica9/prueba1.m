
%Problema 2 practica 9 | Sistema Tridiagonal
 clc
%4 1 0 0 0 / 9
%2 3 1 0 0 / 7
%0 1 1 1 0 / 0
%0 0 2 1 2 / 1
%0 0 0 -3 1 / -2
%-----a---- --b--

%A(2,1)=A(2,1)+A(1,1)*k=0;
%k=-A(2,1)/A(1,1);

%A(3,2)=A(3,2)+A(2,2)*k=0
%k=-A(3,2)/A(2,2)

A=[4 1 0 0 0;2 3 1 0 0;0 1 1 1 0;0 0 2 1 2;0 0 0 -3 1];
B=[9;7;0;1,-2];

for i=2:n
	k=-A(i,i-1)/A(i-1,i-1);
	A(i,i-1)=A(i,i-1)*A(i-1,i-1)*k;

	%o podemos igualarlo a cero A(i,i-1)= 0

	A(i,i)=A(i,i)+A(i-1,i)*k;
	B(i)=B(i)+B(i-1)*k	 

end
disp A

%Quedaría así de lo que se puede sacar un sistema
%x y z w t valor
%_ _ 0 0 0 _
%0 _ _ 0 0 _
%0 0 _ _ 0 0
%0 0 0 _ _ 0
%0 0 0 0 _ _

%x5=B5/A55
%x4=(B4-A45)/A44
% . . .

%Resolucion

x=zeros(1,n) %Donde albergar las soluciones

x(n)=B(n)/A(n,n) %x5

for i=n-1:-1:1 %desde la ultima, decrementando en uno, hasta la primera
	x(i)=(B(i)-A(i,i+1)*x(i+1))/A(i,i);
end


