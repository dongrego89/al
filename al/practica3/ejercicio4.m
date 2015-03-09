clc;
numero=input('Introduce el numero de elementos de la sucesión a sumar: ');
tic
P=eye(3);
S=zeros(3);

A=[1 2 3;0 1 0;0 0 1];

for i=1:numero
	P=P*A;
	S=S+P;	
end

fprintf('La matriz resultante de sumar los %d elementos es:\n ',numero);
disp(S);
toc

