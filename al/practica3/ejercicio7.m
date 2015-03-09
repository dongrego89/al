clc

A=[1 -1 3;2 0 4;3 4 3]

if(size(A)(1)==size(A)(2))

	I=eye(size(A)(1),size(A)(2))

	disp('Solución generada elevando al cuadrado');
	A^2 - 6*A + 5*I

	C=zeros(size(A)(1),size(A)(2));

	for i=1:size(A)(1)
		for j=1:size(A)(2)
			for k=1:size(A)(1)
				C(i,j)=C(i,j)+A(i,k)*A(k,j);		
			end
		end
	end

	disp('Solución generada multiplicando mediante bucles');
	C-6*A+5*I
else
	disp('Imposible operar, tamaño de matriz incorrecto')
end
