clc;
n=input('Introduce la N posicion de la sucesion fibonacci: ');
numero=0;

anterior1=1;
anterior2=1;

for i=3:n
    numero=anterior1+anterior2;
    
    anterior2=anterior1;
    anterior1=numero;
   
end
fprintf('%d\n',numero); 