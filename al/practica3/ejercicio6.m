clc;

A=[1 2; 2 3; 1 2]
B=[1 2 3; -1 1 0]

%Otro ejemplo que serviría:
%A=[1 2 3 4; 3 2 4 4]
%B=[4 5 5 5 5;6 8 8 9 0;0 8 7 6 6;0 9 8 8 8]

C=zeros(size(A)(1),size(B)(2)); % FILAS A, COLUMNAS B

if(size(A)(2)~=size(B)(1))
	fprintf('No se pueden multiplicar\n');
else
	for i=1:size(A)(1) 
		for j=1:size(B)(2) % cada celda de C contendrá:
			for k=1:size(B)(1)
				C(i,j)=C(i,j)+A(i,k) * B(k,j);
			end	
		end
	end
end
	
C

