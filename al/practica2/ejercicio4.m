clc;
n=input('Introduce la dimension de la matriz: ');
m=zeros(n,n);
sumatorio=0;

for i=1:length(m)
   for j=1:length(m)
     if(j==i) %Si pasamos por la posicion de la diagonal le ponemos un 1
         m(i,j)=1;
         if(i<(length(m)))
            m(i,j+1)=2;
         end
         if(i>1)
            m(i,j-1)=-3;    
         end
     end
       
   end
end

fprintf('Esta es la matriz resultante: \n');
disp(m);

identidad=eye(n);

b=(m^2- 6*m + 5*identidad);

fprintf('Esta es la matriz B resultante tras la operacion: \n');

disp(b);

for i=1:n
   for j=1:n
    sumatorio=sumatorio + b(i,j);
   end
end

fprintf('El sumatorio de los valores de la matriz resultante es %d\n',sumatorio);
