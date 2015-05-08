%DECODIFICACION DE MATRIZ
clc;
clear;
A=imread('cifrada.png');
%imshow(A);
whos A
A=double(A);

[filas, columnas]=size(A);

original=zeros(filas,columnas);
K=[67 249;150 209];%Inversa de Clave


for i=1:filas
	for j=1:2:columnas %va analizando de 2 en 2 puesto q la matriz clave es 2x2

		cifrados=[A(i,j);A(i,j+1)];%niveles de gris cifrados
	
		originales=mod(K*cifrados,256);%niveles de gris originales

		original(i,j)=originales(1);%el actual
		original(i,j+1)=originales(2);%el actual+1

	end
end

imshow(uint8(original))