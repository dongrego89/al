clc
format rat
A=[-1 -2 0 -1 0; -2 1 1 2 -1/2; 1 -1 -1/2 2 2; 0 0 -1 2 2]

A(2,:)=A(2,:)+A(1,:)*(-2);
A(3,:)=A(3,:)+A(1,:);

disp('Primera iteracion')
A

A(3,:)=A(3,:)+A(2,:)*(3/5);

disp('Segunda iteracion')
A

A(4,:)=A(4,:)+A(3,:)*(1/(1/10));

disp('Tercera iteracion')
A
