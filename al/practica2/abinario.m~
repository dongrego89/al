function[retorno] = abinario (numero)
    retorno=zeros(1,5);
    divisor=0;
    posicion=5;
    
    while(posicion~=1)% Mientras estemos rellenando hasta la segunda posicion...
        retorno(1,posicion)=mod(numero,2); % Estos valores serán los restos de las divisiones
        numero=floor(numero/2); % Y el dividendo se actualizará a el valor entero de la división por 2
        
        posicion=posicion-1; % Decrementando la posicion
    end
    retorno(1,1)=numero;%El bit mas significativo es el ultimo cociente
   
