clc;
a=imread('estegolsb1.png');
%whos a;
%imshow(a); %muestra la imagen
%imshow nos dice que la imagen es una matriz de 256 x 256
%sabiendo esto podemos recorrer linea a linea la matriz
%y guardando el valor del bit menos significativo
% de cada posicion



b=mod(a(1:256,1:256),2);

% con la sentencia anterior guardamos el bit menos significativo 
% de cada celda de la matriz, ya que la recorremos desde el
% elemento 1 hasta el 256 tanto en i como j
anterior='';

paquete='';
contador=0;
for i=1:256
    for j=1:256
        contador=contador+1;
        paquete=strcat(num2str(paquete),num2str(b(i,j)));
        if(mod(contador,5)==0)
            letra=imprimeletra(paquete);
            
            if((strcmp(letra,anterior)) && (strcmp(letra,'A')))
              
            else
                fprintf('%c',letra);
            end
            anterior=letra;
            
            paquete='';
            
        end

    end    
end


%for i=97:130
   % fprintf('El formato de a es : %c\n',i);
%end