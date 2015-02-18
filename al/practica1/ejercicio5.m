clc;
v=[2 3 5 -7.1; 1 2 3 4];

anterior=1;
aux1=0;
aux2=0;
sumCuadrados=0;


for i=1:2 % Recorriendo filas
    for j=1:4 % Recorriendo columnas
        if(i==1) % Si recorremos fila 1
            aux1=aux1+v(i,j);
        else % Si recorremos fila 2
            aux2=aux2+v(i,j);
        end
        sumCuadrados=sumCuadrados+(v(i,j)^2); % Añadimos al sumatorio el elemento al cuadrado
    end    
end

fprintf('El sumatorio de la fila1 es: %.2f\n',aux1);
fprintf('El sumatorio de la fila2 es: %.2f\n\n',aux2);

aux1=0;

for j=1:4 % Recorriendo columnas
   for i=1:2 % Recorriendo filas
    aux1=aux1+v(i,j);         
   end
        fprintf('El sumatorio de la columna %d es %.2f\n',j,aux1);
        aux1=0;
end

fprintf('\nEl sumatorio de cuadrados es: %.2f\n',sumCuadrados);