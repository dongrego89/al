clc

%la matriz original fue codificada en bloques 4x4

sombra1=imread('sombra1.png')
sombra2=imread('sombra2.png')

%imshow(sombra1)

whos sombra1
%muestra datos y propiedades

sombra1=double(sombra1);
sombra2=double(sombra2);

original=zeros(256,256)

for i=1:4:256 % desde 1 saltando en bloques de 4x4
	for j=1:4:256 % desde 1 saltando en bloques de 4x4
		b1=sombra1(i:i+3,j+3) %Aqui va almacenando el bloque en B1 de sombra1 
		b2=sombra2(i:i+3,j+3) %Aqui va almacenando el bloque en B2 de sombra2

		A=mod(K*(b1+b2),256);

		original(i:i+3,j:j+3)=A;

	end
end

imshow(uint8(original))
