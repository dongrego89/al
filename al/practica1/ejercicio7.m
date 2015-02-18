%AUN NO ESTA TERMINADO

clc;
x=input('Introduce un numero para el valor X: ');
s=input('Introduce un numero de sumandos: ');
sumatorio=0;

for i=0:s
    total=(i+1)*(x^i);
     sumatorio=sumatorio+total;
end
fprintf('El resultado del sumatorio de todos los 100 numeros de la sucesion es %.2f\n',sumatorio);