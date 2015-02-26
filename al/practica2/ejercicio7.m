clc;

coincidencias=0;
elementos=1000;
lista=ceil(100*rand(elementos,1));
%redondea al alza un aleatorio entre 0 y 1 multiplicado por 100

numero=input('Introduce el valor a buscar en esta lista: ');

for i=1:elementos
    if(lista(i,1)==numero)
       fprintf('\n\tCoincidencia encontrada en la posicion (%d,1)',i);
       coincidencias=coincidencias+1;
    end
end
fprintf('\n\nHubo un total de %d resultados\n',coincidencias);
