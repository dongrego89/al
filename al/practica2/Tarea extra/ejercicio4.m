clc;

A=imread('estegolsb2.png'); % Leemos la imagen y la guardamos en la matriz A

B=mod(A,4); % Guardamos en B el resto de dividir los elementos de A / 4

C=zeros(1,1442*5); % En este vector se guardarán los bits que conforman el mensaje

nbits=1; % Esta variable nos sirve para llevar la cuenta del numero de bits al que nos limita el enunciado

for i=1:256 % Recorreremos la matriz B usando i & j
    for j=1:256
        if(nbits<(1442*5)) % Si la cuenta de bits sigue siendo menor al limite del enunciado...
            for k=1:2 % Por cada celda ejecutaremos 2 veces, una por el bit 0 y otra por el bit 1
                if(k==1)
                    switch(B(i,j)) % Aqui seleccionamos la parte mas significativa o bit 1
                        case 0
                            C(1,nbits)=0;
                        case 1
                            C(1,nbits)=0;
                        case 2
                            C(1,nbits)=1;
                        case 3
                            C(1,nbits)=1;
                    end % Según el valor que tome, lo guardamos en el elemento siguiente del vector C
                end

                    if(k==2) % Aqui seleccionamos la parte menos significativa o bit 0
                        switch(B(i,j))
                            case 0
                                C(1,nbits)=0;
                            case 1
                                C(1,nbits)=1;
                            case 2
                                C(1,nbits)=0;
                            case 3
                                C(1,nbits)=1;
                        end % Según el valor que tome, lo guardamos en el elemento siguiente del vector C
                    end 
                nbits=nbits+1; %Incrementamos la posicion en el array C
            end
        end
    end
end

binario=''; % Esta es una variable caracter que contendrá el pack de 5 digitos binarios
letra=''; % Esta es la variable que contendrá la letra que retorna codificaLetra

for i=1:length(C)
    binario=strcat(num2str(binario),num2str(C(1,i))); % Vamos añadiendo elementos al pack de digitos binarios
    if(mod(i,5)==0) % Si hemos añadido 5 elementos procedemos a codificar e imprimir
        letra=codificaLetra(binario);
        binario='';
        fprintf('%c',letra);
    end
end

