clc

fprintf('El primer código es el menos eficiente debido a que tarda más: \n');

tic
A = rand(1000, 1000);
S=zeros(1000,1000);
for i=1:10
B=S+A^i;
end
toc

fprintf('\nEl segundo código es el más eficiente debido a que tarda menos: \n');

tic
A = rand(1000, 1000);
S=zeros(1000,1000);
potencia=eye(1000);
for i=1:10
potencia=potencia*A;
B=S+potencia;
end
toc

%Ambos códigos hacen una operación de potencia.
%Generan una matriz A de orden 1000 cuyos valores son aleatorios
%Generan una matriz Z de de orden 1000 rellena de ceros
%Genera una matriz identidad de orden 1000

%Un código utiliza la operacion potencia y almacena el resultado en la
%matriz B

%El otro código implementa la potencia usando multiplicaciones sucesivas