clc;
for i=1:100
   if (mod(i,2)==0)%Si el resto de i/2 es igual a cero...
       fprintf('El cuadrado de %d es %d\n',i,i^2);
   end
end
