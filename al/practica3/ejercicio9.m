clc

format rat

A=[2 2 0 1 0; 3 1 1 2 -1; 1 0 -1 2 2; 2 0 -1 2 2]

%Unitarizando
A(1,:)=A(1,:)/2;
%Convirtiendo en cero
A(2,:)=A(2,:)+A(1,:)*(-3);
A(3,:)=A(3,:)+A(1,:)*(-1);
A(4,:)=A(4,:)+A(1,:)*(-2);

disp('Primera iteracion')
A

%Unitarizando
A(2,:)=A(2,:)/(-2);
%Convirtiendo en cero
A(3,:)=A(3,:)+A(2,:);
A(4,:)=A(4,:)+A(2,:)*(2);

disp('Segunda iteracion')
A

%Unitarizando
A(3,:)=A(3,:)*(-2/3)
%Convirtiendo en cero
A(4,:)=A(4,:)+A(3,:)*2;

disp('Tercera iteracion')
A

%Unitarizando

A(4,:)=A(4,:)*(-6/7);
disp('Cuarta iteracion')
A
