clc;
x=0;
contador=0;
while (x<=0.95)
contador=contador+1;
x=rand(1);
fprintf('%f\n',x);
end
fprintf('contador=%d\n',contador);

% El programa ejecuta un bucle while que incrementa en cada iteración una
% variable contador y a su vez genera un aleatorio que tomará valores entre
% 0 y 1, de modo que será comparado en la condición de salida del bucle.

% Por tanto el programa contabiliza el número de aleatorios generados hasta
% que se ha podido salir del bucle.