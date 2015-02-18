clc;
vector=ceil(6*rand(1,100));
% Redondea al alza un aleatorio generado entre 0 y 1 multiplicado por 6 (para evitar el 0 que no existe en un dado)
% Almacenando los resultados en una matriz % de 1 x 100 (emulación de 100 lanzamientos)

uno=0;
dos=0;
tres=0;
cuatro=0;
cinco=0;
seis=0;


for i=1:100
   if(vector(i)==1)
       uno=uno+1;
   end
   if(vector(i)==2)
       dos=dos+1;
   end
   if(vector(i)==3)
       tres=tres+1;
   end
   if(vector(i)==4)
       cuatro=cuatro+1;
   end
   if(vector(i)==5)
       cinco=cinco+1;
   end
   if(vector(i)==6)
       seis=seis+1;
   end
end
fprintf('El resumen de las tiradas es el siguiente:\n');
fprintf('\tUNO: %d\n\tDOS: %d\n\tTRES: %d\n\tCUATRO: %d\n\tCINCO: %d\n\tSEIS: %d\n',uno,dos,tres,cuatro,cinco,seis);
   