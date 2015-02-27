clc ;
v = [ 1 0 0 0 1 ]
x=mat2str(v);

fprintf('Esto es la matriz codificada a cadena %s\n',x);

x= x(~isspace(x)) ;

fprintf('Esto es la cadena con trim de espacios %s\n',x);

