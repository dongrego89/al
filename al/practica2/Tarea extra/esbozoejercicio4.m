clc;

A=imread('estegolsb2.png'); % Metemos la imagen en la matriz A

%whos A; % Nos dice la dimesión de la matriz

B = mod(A(1:256,1:256),4); % Rellenamos la matriz B con los LSB de cada celda de A

paquete=''; % Creamos una variable caracter que contendrá los bloques de 5 bits para codificar cada letra
caracter=''; % Variable que contendrá el caracter
duo=zeros(1,2); % En esta variable guardaremos los dos bits menos significativos
nbits=1; % Creamos una variable para contabilizar el numero de bits leidos


for i=1:256    
    for j=1:256
        
        switch(B(i,j))
            case 0
                duo(1,1)=0;
                duo(1,2)=0;
            case 1
                duo(1,1)=0;
                duo(1,2)=1;
            case 2
                duo(1,1)=1;
                duo(1,2)=0;
            case 3
                duo(1,1)=1;
                duo(1,2)=1;
        end
        
        for indice=1:2 % Para cada elemento del duo (2 lsb)
            
            paquete=strcat(num2str(paquete),num2str(duo(1,i))); % Añadimos un nuevo bit al paquete
            if(mod(nbits,5)==0) % Cada vez que se hayan leido 5 elementos...

                if((nbits/5)<1442) % Si aun no hemos leido el mensaje completo...
                    %caracter = codificaLetra(paquete); % Codificamos el paquete binario de 5 digitos en la letra caracter mediante la función
                    fprintf('[%s]',paquete);
                    %fprintf('%c',caracter); % Imprimimos el resultado
                    paquete=''; % Vaciamos el paquete para una nueva letra
                end
            end
            %fprintf('\nLlevamos leidos %d bits',nbits);
            nbits=nbits+1;
                    
        end
        
    end 
end

