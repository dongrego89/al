clc;
tic
A=[0 1/3 0; 1/3 0 0 ; 0 0 1/3]; 
I=eye(length(A),length(A)); 
sumandos=input('Introduce el numero de elementos de la expresión que quieres sumar: '); 
S=zeros(length(A),length(A)); 

S=S+I; 
for i=1:sumandos 
    potencia=A^i; % Comprobar que esto sea correcto
    S=S+potencia; 
end 
disp(S);
toc

tic
A=[0 1/3 0; 1/3 0 0 ; 0 0 1/3]; 
I=eye(length(A),length(A)); 
sumandos=input('Introduce el numero de elementos de la expresión que quieres sumar: '); 
S=zeros(length(A),length(A)); 

potencia=I;

for i=1:sumandos 
    potencia=potencia*A; % Comprobar que esto sea correcto
    S=S+potencia; 
end 
disp(S);
toc