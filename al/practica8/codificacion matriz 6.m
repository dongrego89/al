A=imread('original.png');

%imshow(A);

whos(A);%unsigned int 8 bits //256 tonos de gris

A=double(A);
%Para poder guardar los productos del nivel de gris por matriz clave, ya que en unsigned int 8 no cabe

K=[21 35;18 79]

matriz_cifrada=zeros(324,486)%size(A)

for i=1:324
	for j=1:2:480 %va analizando de 2 en 2 puesto q la matriz clave es 2x2

		orinales=[a(i,j);A(i,j+1)];%niveles de gris originales
	
		cifra=mod(K*originales,256);%niveles de gris cifrados

		matriz_cifrada(i,j)=cifra(1);%el actual
		matriz_cifrada(i,j+1)=cifra(2);%el actual+1

	end
end

%imshow(unit8(matriz_cifrada))
